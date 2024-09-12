<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Mail\ForgotPassword;
use App\Mail\VerificationCodeMail;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;


class HomeController extends Controller
{

    public function index()
    {
        return view('auth.userlogin');
    }

    public function home(Request $request)
    {
        return view('home');
    }

    public function userLogin(Request $request)
    {
        // Validate the login credentials
        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        // Attempt to log the user in
        if (Auth::attempt($credentials)) {
            // Check if user is authenticated
            if (Auth::check()) {
                $user = Auth::user();
                return redirect()->route('admin.dashboard')->with('success', 'Welcome, ' . $user->name . '! You have logged in successfully!');
            } else {
                // Redirect to logout if user is not authenticated (should not reach here in most cases)
                return redirect()->route('logoutuser')->with('error', 'User authentication failed.');
            }
        } else {
            // Redirect back with errors and old input values
            return redirect()->route('indexlogin')
                ->withErrors(['email' => 'The provided credentials do not match our records.'])
                ->withInput();
        }
    }

    public function logoutUser(Request $request)
    {

        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/admin');
    }
}

