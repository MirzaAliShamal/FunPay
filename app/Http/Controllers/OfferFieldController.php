<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OfferCategory;
use App\Models\OfferField;

class OfferFieldController extends Controller
{
    public function index()
    {
        
        $module_data = OfferField::with('offercategory')->get();
        return view('offerfield.index', compact('module_data'));
    }

    
    public function create()
    {
        $module_data = OfferCategory::all(); 
        return view('offerfield.create', compact('module_data'));
    }

    
    public function store(Request $request)
    {
       
        $request->validate([
            'label' => 'required|string|max:255',
            // 'offer_category_id' => 'required|integer|exists:offer_categories,id',
        ]);

        OfferField::create($request->all());
        return redirect()->route('admin.offerfield')->with('success', 'Sub-Category created successfully.');
    }

    
    public function edit($id)
    {
        $module_data = OfferCategory::all(); 
        $edit_data = OfferField::findOrFail($id); 
       
        return view('offerfield.edit', compact('edit_data', 'module_data'));
    }

    
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
        ]);
        $offerType = OfferField::findOrFail($id); 
        $offerType->update($request->all());
        return redirect()->route('admin.offerfield')->with('success', 'Sub-Category updated successfully.');
    }

    
    public function destroy($id)
    {
        $subCategory = OfferField::findOrFail($id); 
        $subCategory->delete();
        return redirect()->route('admin.offerfield')->with('success', 'Sub-Category deleted successfully.');
    }
}
