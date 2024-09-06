<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\OfferCategory;

class SubCategoryController extends Controller
{
    public function index()
    {
        $subCategories = SubCategory::with('category')->with('offercategory')->get();
        return view('subcategory.index', compact('subCategories'));
    }

    
    public function create()
    {
        $categories = Category::all(); 
        $offer_categories = OfferCategory::all(); 
        return view('subcategory.create', compact('categories','offer_categories'));
    }

    
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'category_id' => 'required|integer|exists:categories,id',
        ]);

        SubCategory::create($request->all());
        return redirect()->route('admin.subcategory.index')->with('success', 'Sub-Category created successfully.');
    }

    
    public function edit($id)
    {
        $categories = Category::all(); 
        $subCategory = SubCategory::findOrFail($id); 
        $offer_categories = OfferCategory::all(); 
       
        return view('subcategory.edit', compact('subCategory', 'categories','offer_categories'));
    }

    
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'category_id' => 'required|integer|exists:categories,id',
            'offer_category_id' => 'required|integer|exists:offer_categories,id',
        ]);
        $subCategory = SubCategory::findOrFail($id); 
        $subCategory->update($request->all());
        return redirect()->route('admin.subcategory.index')->with('success', 'Sub-Category updated successfully.');
    }

    
    public function destroy($id)
    {
        $subCategory = SubCategory::findOrFail($id); 
        $subCategory->delete();
        return redirect()->route('admin.subcategory.index')->with('success', 'Sub-Category deleted successfully.');
    }
}
