<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Buyer;
use Illuminate\Support\Facades\Hash;
class BuyerController extends Controller
{

    public function index(){
        return view('buyer.register');
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
        $buyer = new Buyer();
        $buyer->name = $request->name;
        $buyer->email = $request->email;
        $buyer->password = Hash::make($request->password); // Hash the password
        $buyer->save();

        // Redirect or return a response
        if ($buyer) {
            return redirect()->route('buyer.register')->with('success', 'Registration successful! Please log in.');
        }
    }


}
