<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function store(Request $request)
    {
        // Validate the request
        $request->validate([
            'rating' => 'required|integer|between:1,5',
            'comment' => 'required|string|max:255',
            'offer_id' => 'required|exists:offers,id',
        ]);

        // Check if the user has already reviewed this offer
        $existingReview = Review::where('user_id', session('user_id'))
            ->where('offer_id', $request->offer_id)
            ->first();

        if ($existingReview) {
            return redirect()->back()->withErrors(['message' => 'You can only submit one review per offer.']);
        }

        // Create a new review
        $review = new Review();
        $review->user_id = session('user_id');
        $review->offer_id = $request->offer_id;
        $review->rating = $request->rating;
        $review->comment = $request->comment;
        $review->save();

        return redirect()->back()->with('success', 'Review submitted successfully!');
    }


}
