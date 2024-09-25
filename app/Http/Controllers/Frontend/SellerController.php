<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class SellerController extends Controller
{
    public function index()
    {
        return view('frontend.seller.registration.step1');
    }


    public function SecondIndex()
    {
        return view('frontend.seller.registration.step2');
    }

    public function sellerregisterform()
    {
        return view('frontend.seller.registration.step3');
    }

    // Store the seller information
    public function store(Request $request)
    {

       
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'country' => 'required|string|max:255',
            'email' => 'required|email',
            'password' => 'required|string|min:6',
            'messenger' => 'nullable|string|max:255',
            'messenger_link' => 'nullable|string|max:255',
            'dob' => 'required|date',
            'phone_number' => 'required|string|max:20',
            'country_code' => 'required|string|max:5',
            'selfie' => 'required|file|mimes:jpg,jpeg,png,pdf',
            'id_card_front' => 'required|file|mimes:jpg,jpeg,png,pdf',
            'id_card_back' => 'required|file|mimes:jpg,jpeg,png,pdf',
            'games_products' => 'required|string',
            'other_info' => 'nullable|string',
            'stock_source' => 'required|string',
            'selling_elsewhere' => 'nullable|integer',
            
        ]);


        // Store the files

        $selfie = $request->file('selfie')->store('uploads/selfie');
        $idCardFrontPath = $request->file('id_card_front')->store('uploads/id_card_fronts');
        $idCardBackPath = $request->file('id_card_back')->store('uploads/id_card_backs');

        User::create(array_merge($validatedData, [
            'selfie' => $selfie,
            'id_card_front' => $idCardFrontPath,
            'id_card_back' => $idCardBackPath,
            'password' => bcrypt($request->password), // Hash the password
            'role_id' =>  2
        ]));


        // Redirect to success page
        return redirect()->route('user.seller.login')->with('success', 'Seller Registered Successfully!');
    }



}
