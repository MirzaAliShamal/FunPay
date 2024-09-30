<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Stripe\Stripe;
use Stripe\PaymentIntent;
use Stripe\Customer;
use Stripe\SetupIntent;
use Laravel\Cashier\Billable;
use Illuminate\Support\Facades\Hash;
use App\Models\Order;
use App\Models\Offer;
use App\Models\User;
use App\Models\SellerAccount;


class OrderController extends Controller
{
    public function index(Request $request)
    {
        $offer_id = $request->offer_id;
        $offer = Offer::select('*')->whereid($offer_id)->get()->toArray();
        Stripe::setApiKey(env('STRIPE_SECRET'));
        $setupIntent = SetupIntent::create([
            'payment_method_types' => ['card'],
        ]);

        $clientSecret = $setupIntent->client_secret;
        return view('frontend.order',compact('offer','clientSecret'));

    }

    public function makePaymentSession(){
        
        return response()->json(['success' => true, 'clientSecret' => $setupIntent->client_secret]);
    }

    public function initiateStripePayment()
    {
        
        $email = session('email');
        $name = session('user_name');
        $last4 = $_REQUEST['last4'];
        $amount = $_REQUEST['amount'];
        $seller_id = $_REQUEST['seller_id'];
        $offer_id = $_REQUEST['offer_id'];

        $seller_account_data = SellerAccount::select('account_id')->get()->toArray();

        $paymentMethodId = $_REQUEST['payment_method_id'];

        $transfer = Transfer::create([
            'amount' => $amount*100,
            'currency' => 'usd',
            'destination' => $seller_account_data[0]['account_id'],
            'description' => 'Payout to connected account',
        ]);

        // Set your Stripe secret key
        Stripe::setApiKey(env('STRIPE_SECRET'));

        $customer = Customer::create([
            'payment_method' => $paymentMethodId,
            'email' => $email,
            'name' => $name,
            // Add other customer details
        ]);
        $customer_id = $customer->id;

        // Create a Payment Intent using the customer
        $paymentIntent = PaymentIntent::create([
            'amount' => $amount*100, // Amount in cents
            'currency' => 'usd',
            'customer' => $customer_id,
            'payment_method' => $paymentMethodId,
            'confirm' => true, // Confirm the payment immediately
            'return_url' => 'http://localhost/funpay',
        ]);

       
        $order_obj = new Order();
        
    
        $order_obj->buyer_id = session('user_id');   
        $order_obj->order_id = $this->generateRandomUniqueId(7);   
        $order_obj->stripe_payment_id = $paymentIntent->id;        
        $order_obj->stripe_customer_id = $customer_id;  
        $order_obj->card_number = $last4;     
        $order_obj->seller_id = $seller_id;
        $order_obj->offer_id = $offer_id;
        $order_obj->amount = $amount;
        $order_obj->email = $email;
        $order_obj->name = $name;

        $order_obj->save();
         
        return response()->json(['success' => true, 'paymentIntent' => $paymentIntent->id]);
    }

    public function generateRandomUniqueId($length = 10) {
        $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $charactersLength = strlen($characters);
        $randomUniqueId = '';
    
        for ($i = 0; $i < $length; $i++) {
            $randomUniqueId .= $characters[rand(0, $charactersLength - 1)];
        }
    
        return $randomUniqueId;
    }

    
}
