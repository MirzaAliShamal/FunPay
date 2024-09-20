<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\OfferCategory;
use App\Models\Offer;
use Illuminate\Support\Facades\Storage;

class OfferController extends Controller
{
    public function index(){
        $seller_id = session('user_id');
        $sub_category_slug = session('sub_category_slug');
        $offer_category_id = session('offer_category_id');
        $offer_data = OfferCategory::with(['offerFields' => function ($query) {
            $query->select('id', 'type', 'values', 'label', 'offer_category_id'); 
        }])
        ->select('id', 'name') 
        ->whereid($offer_category_id)
        ->get()
        ->toArray();
        $offers = Offer::whereseller_id($seller_id)->whereoffer_category_id($offer_category_id)->orderBy('id','DESC')->get()->toArray();
        return view('frontend.seller.offers.index',compact('offers','offer_data','sub_category_slug'));
    }

    public function create(){
        $sub_category_slug = session('sub_category_slug');
        $offer_category_id = session('offer_category_id');

        $offer_data = OfferCategory::with(['offerFields' => function ($query) {
            $query->select('id', 'type', 'values', 'label', 'offer_category_id');
        }])
        ->select('id', 'name')
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
                $imageName = basename($path);
                $imagePaths[] = $imageName;
            }
        }

        $fields = $request->fields;
        $field_values = null;
        foreach ($fields as $k=>$field){
            if($k == 0){
                $field_values = 'Value-'.$request->$field;
            }else{
                $field_values.= ",".'Value-'.$request->$field;
            }
        }
        $field_values = explode(",", $field_values);
        $fields = array_merge($fields, $field_values);
        $status = 0;
        if($request->input('status' )== 'on'){
            $status = 1;
        }
        // echo "<pre>";
        // print_r($request->file('image'));
        // exit;
        // Store data in the database
        $seller_id = session('user_id');
        $sub_category_id = session('sub_category_id');
        $offer_category_id = session('offer_category_id');
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
            'offer_category_id' => $offer_category_id,
        ]);

        return redirect()->route('offer.index')->with('success', 'Offer saved successfully!');
    }


    public function update(Request $request, $id)
    {
        $offer = Offer::find($id);
        $fields = $request->fields;
        $field_values = null;
        foreach ($fields as $k=>$field){
            if($k == 0){
                $field_values = 'Value-'.$request->$field;
            }else{
                $field_values.= ",".'Value-'.$request->$field;
            }
        }
        $field_values = explode(",", $field_values);
        $fields = array_merge($fields, $field_values);
        $status = 0;
        if($request->input('status' )== 'on'){
            $status = 1;
        }
        
        $seller_id = session('user_id');
        $sub_category_id = session('sub_category_id');
        $offer_category_id = session('offer_category_id');

        // Handle image uploads
        $imagePaths = [];
        if ($request->hasFile('image')) {

            if($request->input('old_images')){
                $old_images = explode(',',$request->input('old_images'));
                foreach ($old_images as $old_image){
                    $imagePaths[] = $old_image;
                }
            }

            foreach ($request->file('image') as $image) {
                $path = $image->store('game_images', 'public');
                $imageName = basename($path);
                $imagePaths[] = $imageName;
            }

            

            $offer->update([
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
                'offer_category_id' => $offer_category_id,
            ]);
            
        }else{
            $offer->update([
                'seller_id' => $seller_id,
                'fields' => json_encode($fields),
                'description' => $request->input('short_description'),
                'long_description' => $request->input('long_description'),
                'buyer_message' => $request->input('buyer_message'),
                'price' => $request->input('price'),
                'stock' => $request->input('stock'),
                'status' => $status,
                'sub_category_id' => $sub_category_id,
                'offer_category_id' => $offer_category_id,
            ]);
        }

        
        

        return redirect()->route('offer.index')->with('success', 'Offer saved successfully!');
    }

    public function edit($id){

        $sub_category_slug = session('sub_category_slug');
        $offer_category_id = session('offer_category_id');
        $offer = Offer::whereid($id)->first();
        $offer_data = OfferCategory::with(['offerFields' => function ($query) {
            $query->select('id', 'type', 'values', 'label', 'offer_category_id'); 
        }])
        ->select('id', 'name') 
        ->whereid($offer_category_id)
        ->get()
        ->toArray();
        // echo "<pre>";
        // print_r($offer_data);
        // exit;
        return view('frontend.seller.offers.edit',compact('offer_data','offer'));
    }

    public function deleteImage()
  {

      $id = $_REQUEST['id'];
      $image = $_REQUEST['image'];

      if (Storage::disk('public')->exists('game_images/' . $image)) {
            Storage::disk('public')->delete('game_images/' . $image);
      }
      // $result = DB::Table('website_infos')->select('images')->where('id','=',$id)->get()->toArray();
      $result = Offer::findOrFail($id);
      $imagedata = $result->image;
      $imagedata = json_decode($imagedata);
      $variable = '';
      for($i=0;$i<count($imagedata);$i++){
          if($imagedata[$i] != $image){
              if($i==0){
                  $variable = $imagedata[$i];
              }else{
                  if($variable){
                    $variable .= ','.$imagedata[$i];
                  }else{
                    $variable = $imagedata[$i];
                  }
              }
          }
      }
     if($variable){
        $Modeldata = array(

            'image'    =>  json_encode(explode(',',$variable)),
  
        );
     }else{
        $Modeldata = array(

            'image'    =>  null,
  
        );
     }
      
     
      $tableresult = Offer::where('id', $id)->update( $Modeldata );

  }

    public function delete($id)
    {
        $offer = Offer::findOrFail($id);
        $imagePaths = json_decode($offer->image, true);

        if (!empty($imagePaths)) {
            foreach ($imagePaths as $imageName) {
                if (Storage::disk('public')->exists('game_images/' . $imageName)) {
                    Storage::disk('public')->delete('game_images/' . $imageName);
                }
            }
        }

        $offer->delete();
        return redirect()->route('offer.index')->with('success', 'Offer and associated images deleted successfully.');
    }

}
