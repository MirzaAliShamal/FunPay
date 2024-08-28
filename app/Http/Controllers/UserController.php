<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Session\Session;

class UserController extends Controller
{
    

    public function profile() {
        $user = auth()->user();
        $userprofile = User::where('employee_id', auth()->user()->employee_id)->first();
        return view('users.profile', compact('user', 'userprofile'));
    }
    


    public function updateProfile(Request $request)
    {
        $request->validate([
            'profile_img' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);
    
        $user = Auth::user();
    
        if ($request->hasFile('profile_img')) {
            $destinationPath = 'userprofile';
            $myimage = time() . '_' . $request->profile_img->getClientOriginalName();
            $request->profile_img->move(public_path($destinationPath), $myimage);
    
            $user->profile_img = $destinationPath . '/' . $myimage;
            $user->save();
    
            return redirect()->back()->with('success', 'Profile updated successfully.');
        }
    
        return redirect()->back()->with('error', 'Please select a valid image.');
    }

}