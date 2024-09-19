<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Buyer;
use App\Models\Seller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class LoginController extends Controller
{

    public function index()
    {
        // dd(Hash::make('admin'));
        return view('auth.login.login');
    }


    public function userLogin(Request $request)
    {
        if(!$request->user_type){
            return redirect()->route('user.seller.login')->with('error', 'Please select the type seller or buyer!'); 
        }
        // Validate the login credentials
        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
            'user_type' => ['required'],
        ]);
        
        if ($credentials['user_type'] === 'buyer') {
           
            $buyer = Buyer::where('email', $credentials['email'])->first();
            
            if ($buyer && Hash::check($credentials['password'], $buyer->password)) {
                session([
                    'user_type' => 'buyer',
                    'user_id' => $buyer->id,
                    'user_name' => $buyer->name,
                    'email' => $buyer->email,
                ]);
                return redirect()->route('homepage')->with('success', 'Welcome, ' . $buyer->name . '! You have logged in successfully!');
            }
        } elseif ($credentials['user_type'] === 'seller') {
            // Attempt to log in as a seller
            $seller = Seller::where('email', $credentials['email'])->first();


            if ($seller && Hash::check($credentials['password'], $seller->password)) {
                session([
                    'user_type' => 'seller',
                    'user_id' => $seller->id,
                    'user_name' => $seller->full_name,
                    'email' => $seller->email,
                ]);
                return redirect()->route('homepage')->with('success', 'Welcome, ' . $seller->name . '! You have logged in successfully!');
            }
        }

        // Redirect back with errors and old input values if login failed
        return redirect()->route('user.seller.login')->with(['error' => 'The provided credentials do not match our records.']);
    }


    public function logout(Request $request)
    {
        
        Auth::logout(); // Log out the user
        // Invalidate the session
        $request->session()->invalidate();
        session()->flush();
        // Regenerate the session token
        $request->session()->regenerateToken();
        // Redirect to the login page or home page with a success message
        return redirect()->route('user.seller.login')->with('success', 'You have been logged out successfully.');
    }


}
