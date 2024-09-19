<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Seller;

class SellersController extends Controller
{
    public function index()
    {
        $module_data = Seller::select('*')->get();
        return view('seller.index', compact('module_data'));
    }

    public function show($id)
    {
        $seller_data = Seller::findOrFail($id); // Eager load filters and their options
      
        return view('seller.view', compact('seller_data'));
    }

    public function update(Request $request, $id)
    {
        $data = array(
            'status' => $request->status,
        );
        Seller::whereid($id)->update($data);
        return redirect()->route('admin.seller')->with('success', 'Data updated successfully.');
    }

    public function destroy($id)
    {
        $subCategory = Seller::findOrFail($id); 
        $subCategory->delete();
        return redirect()->route('admin.seller')->with('success', 'Data deleted successfully.');
    }
}
