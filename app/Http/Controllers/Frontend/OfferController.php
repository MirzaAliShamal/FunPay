<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\OfferCategory;
use App\Models\Offer;

class OfferController extends Controller
{
    public function index(){
        $seller_id = session('user_id');
        $sub_category_slug = session('sub_category_slug');
        $offer_category_id = session('offer_category_id');
        $offer_data = OfferCategory::with(['offerFields' => function ($query) {
            $query->select('id', 'type', 'values', 'label', 'offer_category_id'); // specify the attributes you need from the offer_types table
        }])
        ->select('id', 'name') // specify the attributes you need from the offer_categories table
        ->whereid($offer_category_id)
        ->get()
        ->toArray();
        $offers = Offer::whereseller_id($seller_id)->get()->toArray();
        return view('frontend.seller.offers.index',compact('offers','offer_data','sub_category_slug'));
    }

    public function create(){
        $sub_category_slug = session('sub_category_slug');
        $offer_category_id = session('offer_category_id');

        $offer_data = OfferCategory::with(['offerFields' => function ($query) {
            $query->select('id', 'type', 'values', 'label', 'offer_category_id'); // specify the attributes you need from the offer_types table
        }])
        ->select('id', 'name') // specify the attributes you need from the offer_categories table
        ->whereid($offer_category_id)
        ->get()
        ->toArray();
        // echo "<pre>";
        // print_r($offer_data);
        // exit;
      
        return view('frontend.seller.offers.create',compact('offer_data'));
    }

    public function store(Request $request)
    {
      
        

        // Handle image uploads
        $imagePaths = [];
        if ($request->hasFile('image')) {
            foreach ($request->file('image') as $image) {
                $path = $image->store('game_images', 'public');
                $imagePaths[] = $path;
            }
        }

        $fields = $request->fields;
        $field_values = null;
        foreach ($fields as $k=>$field){
            if($k == 0){
                $field_values = 'value-'.$request->$field;
            }else{
                $field_values.= ",".'Value-'.$request->$field;
            }
        }
        $field_values = explode(",", $field_values);
        $fields = array_merge($fields, $field_values);
        $status = 0;
        if($request->input('status' == 'on')){
            $status = 1;
        }
        // echo "<pre>";
        // print_r($request->file('image'));
        // exit;
        // Store data in the database
        $seller_id = session('user_id');
        $sub_category_id = session('sub_category_id');
        Offer::create([
            'seller_id' => $seller_id,
            'fields' => json_encode($fields),
            'description' => $request->input('short_description'),
            'long_description' => $request->input('long_description'),
            'buyer_message' => $request->input('buyer_message'),
            'price' => $request->input('price'),
            'stock' => $request->input('stock'),
            'image' => json_encode($imagePaths),
            'status' => $status,
            'sub_category_id' => $sub_category_id,
        ]);

        return redirect()->route('offer.index')->with('success', 'Offer saved successfully!');
    }
}
