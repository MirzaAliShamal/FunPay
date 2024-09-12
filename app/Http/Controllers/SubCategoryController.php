<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Filter;
use App\Models\SubCategory;
use App\Models\OfferCategory;

class SubCategoryController extends Controller
{
    public function index()
    {
        $subCategories = SubCategory::with(['category', 'offercategory', 'filters'])->get();
        return view('subcategory.index', compact('subCategories'));
    }



    // public function create()
    // {
    //     $categories = Category::all();
    //     $offer_categories = OfferCategory::all();
    //     return view('subcategory.create', compact('categories','offer_categories'));
    // }

    public function create()
{
    $categories = Category::all();
    $offer_categories = OfferCategory::all();
    $filters = Filter::all(); // Fetch all filters

    return view('subcategory.create', compact('categories', 'offer_categories', 'filters'));
}



    // public function store(Request $request)
    // {
    //     $request->validate([
    //         'name' => 'required|string|max:255',
    //         'category_id' => 'required|integer|exists:categories,id',
    //     ]);

    //     SubCategory::create($request->all());
    //     return redirect()->route('admin.subcategory.index')->with('success', 'Sub-Category created successfully.');
    // }

    public function store(Request $request)
{
    $request->validate([
        'category_id' => 'required',
        'name' => 'required|string|max:255',
        // 'filters' => 'array',
    ]);

    $subCategory = SubCategory::create($request->all());
    $subCategory->filters()->sync($request->filters); // Sync filters

    return redirect()->route('admin.subcategory.index')->with('success', 'Subcategory created successfully.');
}



    // public function edit($id)
    // {
    //     $categories = Category::all();
    //     $subCategory = SubCategory::findOrFail($id);
    //     $offer_categories = OfferCategory::all();

    //     return view('subcategory.edit', compact('subCategory', 'categories','offer_categories'));
    // }

    public function edit(string $id)
    {
        $categories = Category::all();
        $subCategory = SubCategory::findorfail($id);
        $offer_categories = OfferCategory::all();
        $filters = Filter::all(); // Fetch all filters

        return view('subcategory.edit', compact('subCategory', 'categories', 'offer_categories', 'filters'));
    }




    // public function update(Request $request, $id)
    // {
    //     $request->validate([
    //         'name' => 'required|string|max:255',
    //         'category_id' => 'required|integer|exists:categories,id',
    //         'offer_category_id' => 'required|integer|exists:offer_categories,id',
    //     ]);
    //     $subCategory = SubCategory::findOrFail($id);
    //     $subCategory->update($request->all());
    //     return redirect()->route('admin.subcategory.index')->with('success', 'Sub-Category updated successfully.');
    // }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'category_id' => 'required',
            'name' => 'required|string|max:255',
        ]);
        $subCategory=SubCategory::findorfail($id);
        $subCategory->update($request->all());
        $subCategory->filters()->sync($request->filters); // Sync filters

        return redirect()->route('admin.subcategory.index')->with('success', 'Subcategory updated successfully.');
    }


    public function destroy($id)
    {
        $subCategory = SubCategory::findOrFail($id);
        $subCategory->delete();
        return redirect()->route('admin.subcategory.index')->with('success', 'Sub-Category deleted successfully.');
    }
}
