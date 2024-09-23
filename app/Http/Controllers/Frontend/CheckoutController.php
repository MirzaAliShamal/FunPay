<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Offer;
use App\Models\OfferCategory;
use App\Models\User;
use App\Models\Message;

class CheckoutController extends Controller
{

    

    public function index($id)
    {
        $offers= Offer::find($id);
        $message_obj = new Message();
       
        $sub_category_slug = session('sub_category_slug');
        $offer_category_id = session('offer_category_id');
        $offer_data = OfferCategory::with(['offerFields' => function ($query) {
            $query->select('id', 'type', 'values', 'label', 'offer_category_id'); 
        }])
        ->select('id', 'name') 
        ->whereid($offer_category_id)
        ->get()
        ->toArray();
        if (count($offer_data)<1) {
            abort(404);
        }
        $seller_obj = new User();
        return view('frontend.checkout.checkout', compact('sub_category_slug','offer_data','offers','seller_obj','message_obj'));
    }
}
