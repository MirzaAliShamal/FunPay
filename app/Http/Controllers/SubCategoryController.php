<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Filter;
use App\Models\SubCategory;
use App\Models\OfferCategory;
use App\Models\Option;

class SubCategoryController extends Controller
{
    public function index()
    {
        $subCategories = SubCategory::with(['category', 'offercategory', 'filters'])->get();
        return view('subcategory.index', compact('subCategories'));
    }

    public function create()
    {
        $categories = Category::all();
        $offer_categories = OfferCategory::all();
        $filters = Filter::all(); // Fetch all filters

        return view('subcategory.create', compact('categories', 'offer_categories', 'filters'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'category_id' => 'required|exists:categories,id',
            'name' => 'required|string|max:255',
        ]);

        // Create the subcategory
        $subCategory = SubCategory::create($request->all());

        // Sync filters
        $subCategory->filters()->sync($request->filters);

        return redirect()->route('admin.subcategory.index')->with('success', 'Subcategory created successfully.');
    }


    public function edit(string $id)
    {
        $subCategory = SubCategory::with(['filters.options'])->findOrFail($id); // Eager load filters and their options
        $categories = Category::all();
        $offer_categories = OfferCategory::all();
        $filters = Filter::all(); // Fetch all filters

        return view('subcategory.edit', compact('subCategory', 'categories', 'offer_categories', 'filters'));
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'category_id' => 'required|exists:categories,id',
            'name' => 'required|string|max:255',
            'filters' => 'array',
            'filters.*' => 'exists:filters,id', // Validate each filter ID
            'offer_category_id' => 'nullable|exists:offer_categories,id',
            'status' => 'required|boolean',
        ]);

        $subCategory = SubCategory::findOrFail($id);
        $subCategory->update($request->all());
        $subCategory->filters()->sync($request->filters); // Sync filters

        // Handle updating options for dropdown filters
        if ($request->filled('filter_options')) {
            foreach ($request->filters as $filterId) {
                Option::where('filter_id', $filterId)->delete(); // Clear existing options
                $options = array_map('trim', explode(',', $request->filter_options[$filterId]));
                foreach ($options as $option) {
                    Option::create(['name' => $option, 'filter_id' => $filterId]);
                }
            }
        }

        return redirect()->route('admin.subcategory.index')->with('success', 'Subcategory updated successfully.');
    }

    public function destroy($id)
    {
        $subCategory = SubCategory::findOrFail($id);
        $subCategory->delete();
        return redirect()->route('admin.subcategory.index')->with('success', 'Sub-Category deleted successfully.');
    }
}
