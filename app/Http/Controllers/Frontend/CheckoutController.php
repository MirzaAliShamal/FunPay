<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Offer;
use App\Models\OfferCategory;
use App\Models\User;
use App\Models\Message;
use App\Models\Review;
use Illuminate\Support\Facades\Auth;

class CheckoutController extends Controller
{

    public function index($id)
    {
        // Find the offer by ID
        $offers = Offer::find($id);
        $message_obj = new Message();

        // Retrieve session data
        $sub_category_slug = session('sub_category_slug');
        $offer_category_id = session('offer_category_id');

        // Get offer category data
        $offer_data = OfferCategory::with([
            'offerFields' => function ($query) {
                $query->select('id', 'type', 'values', 'label', 'offer_category_id');
            }
        ])
            ->select('id', 'name')
            ->whereid($offer_category_id)
            ->get()
            ->toArray();

        // Check if offer data exists
        if (count($offer_data) < 1) {
            abort(404);
        }

        // Initialize seller object
        $seller_obj = new User();

        // Get reviews for the offer
        $reviews = Review::where('offer_id', $id)->with('user')->get();

        // Calculate average rating
        $averageRating = $reviews->avg('rating');

        // Initialize ratings count array
        $ratingsCount = array_fill(1, 5, 0); // Initializes keys 1 to 5 with 0

        // Count the number of reviews per rating
        foreach ($reviews as $review) {
            if (isset($ratingsCount[$review->rating])) {
                $ratingsCount[$review->rating]++;
            }
        }

        // Check if the user has already reviewed the offer
        $userId = auth()->id();
        $userReview = Review::where('user_id', $userId)->where('offer_id', $id)->first();

        return view('frontend.checkout.checkout', compact(
            'sub_category_slug',
            'offer_data',
            'offers',
            'seller_obj',
            'message_obj',
            'reviews',
            'averageRating',
            'ratingsCount',
            'userReview'
        ));
    }

}
