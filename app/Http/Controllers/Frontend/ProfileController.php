<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\SellerAccount;
use Stripe\Stripe;
use Stripe\Account;

class ProfileController extends Controller
{
    public function index(){
        $user_id = session('user_id');
        $user_data = User::select('*')->whereid($user_id)->get()->toArray();
        return view('frontend.account.profile',compact('user_data'));
    }

    public function createConnectedAccount()
    {
        $email = session('email');
        $user_data = User::select('country')->whereemail($email)->get()->toArray();
        Stripe::setApiKey(env('STRIPE_SECRET'));

        $account = Account::create([
            'type' => 'express',
            'country' => $user_data[0]['country'],
            'email' => $email,
            'capabilities' => [
                'transfers' => ['requested' => true],
            ],
        ]);

        // $account = Account::retrieve('acct_1Q4gZUI1DLUxvb32');

       
        SellerAccount::create([
            'seller_id' => session('user_id'),
            'payment_method' => 'stripe',
            'account_id' => $account->id, // Save Stripe account ID
            'status' => 1
        ]);

        return redirect()->route('account.profile')->with('success', 'Account created successfully.');



    }
}
