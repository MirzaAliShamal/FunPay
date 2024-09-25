<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
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
       


        // Validate the login credentials
        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        $user = User::where('email', $credentials['email'])->first();



        if ($user && Hash::check($credentials['password'], $user->password)) {
            $user_type = 'buyer';
            $image = null;
            if($user->role_id == 2){
                $user_type = 'seller';
                $image = $user->selfie;
            }
            $array = [
                'is_login' => 1,
            ];
            User::whereid($user->id)->update($array);
            session([
                'user_type' =>$user_type,
                'user_id' => $user->id,
                'user_name' => $user->name,
                'email' => $user->email,
                'image' => $user->image,
                'created_at' => $user->created_at,
                'is_login' => 1,
                'logout_date_time' => $user->logout_date_time,

            ]);
            return redirect()->route('homepage')->with('success', 'Welcome, ' . $user->name . '! You have logged in successfully!');
        }
        
       

        // Redirect back with errors and old input values if login failed
        return redirect()->route('user.seller.login')->with(['error' => 'The provided credentials do not match our records.']);
    }


    public function logout(Request $request)
    {
        if(session('user_id')){
            $user = User::where('id', session('user_id'))->first();
            $array = [
                'is_login' => 0,
                'logout_date_time' => date('Y-m-d H:i:s'),
            ];
            User::whereid($user->id)->update($array);
        }
       
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
