<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OfferCategory;
use App\Models\OfferType;

class OfferTypeController extends Controller
{
    public function index()
    {
        
        $module_data = OfferType::with('offercategory')->get();
        return view('offertype.index', compact('module_data'));
    }

    
    public function create()
    {
        $module_data = OfferCategory::all(); 
        return view('offertype.create', compact('module_data'));
    }

    
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
<<<<<<< HEAD
            'offer_category_id' => 'required|integer|exists:offer_categories,id',
=======
            // 'offer_category_id' => 'required|integer|exists:offer_categories,id',
>>>>>>> sharjeel
        ]);

        OfferType::create($request->all());
        return redirect()->route('admin.offertype')->with('success', 'Sub-Category created successfully.');
    }

    
    public function edit($id)
    {
        $module_data = OfferCategory::all(); 
        $edit_data = OfferType::findOrFail($id); 
       
        return view('offertype.edit', compact('edit_data', 'module_data'));
    }

    
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
        ]);
        $offerType = OfferType::findOrFail($id); 
        $offerType->update($request->all());
        return redirect()->route('admin.offertype')->with('success', 'Sub-Category updated successfully.');
    }

    
    public function destroy($id)
    {
        $subCategory = OfferType::findOrFail($id); 
        $subCategory->delete();
        return redirect()->route('admin.offertype')->with('success', 'Sub-Category deleted successfully.');
    }
}
