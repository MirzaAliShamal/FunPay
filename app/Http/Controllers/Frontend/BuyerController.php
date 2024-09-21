<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Buyer;
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

    public function buyerindex(){

        $module_data = Buyer::select('*')->get();
        return view('buyer.index', compact('module_data'));
    }


    public function show($id)
    {
        $buyer_data = Buyer::findOrFail($id); // Eager load filters and their options

        return view('buyer.view', compact('buyer_data'));
    }

    public function update(Request $request, $id)
    {
        $data = array(
            'status' => $request->status,
        );
        Buyer::whereid($id)->update($data);
        return redirect()->route('admin.buyer')->with('success', 'Data updated successfully.');
    }

    public function destroy($id)
    {
        $subCategory = Buyer::findOrFail($id);
        $subCategory->delete();
        return redirect()->route('admin.buyer')->with('success', 'Data deleted successfully.');
    }

}
