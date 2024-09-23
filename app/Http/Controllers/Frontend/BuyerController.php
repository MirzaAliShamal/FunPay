<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
class BuyerController extends Controller
{

    public function index(){
        return view('frontend.buyer.register');
    }



    public function store(Request $request)
    {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        // Create the buyer
        $buyer = new User();
        $buyer->name = $request->name;
        $buyer->role_id = 3;
        $buyer->email = $request->email;
        $buyer->password = Hash::make($request->password); // Hash the password
        $buyer->save();

        // Redirect or return a response
        if ($buyer) {
            return redirect()->route('user.seller.login')->with('success', 'Registration successful! Please log in.');
        }
    }


}
