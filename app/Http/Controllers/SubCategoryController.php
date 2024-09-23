<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Filter;
use App\Models\SubCategory;
use App\Models\OfferCategory;
use App\Models\Option;
use Yajra\DataTables\Facades\DataTables;

class SubCategoryController extends Controller
{
    public function index()
    {
        return view('subcategory.index');
    }

    public function getSubcategoryData()
    {
        if (request()->ajax()) {
            $subCategories = SubCategory::with(['category', 'offercategory', 'filters'])->get();
            return DataTables::of($subCategories)
                ->addColumn('name', function ($row) {
                    return $row->name;
                })
                ->addColumn('category', function ($row) {
                    return $row->category->name;
                })
                ->addColumn('offertype', function ($row) {
                    return $row->offercategory ? $row->offercategory->name : '';
                })
                ->addColumn('slug', function ($row) {
                    return $row->slug;
                })
                ->addColumn('status', function ($row) {
                    return $row->status == 1 ? '<div class="badge bg-success" style="">Active</div>' : '<div class="badge bg-danger">Inactive</div>';
                })
                ->addColumn('filter', function ($row) {
                    if ($row->filters->isNotEmpty()) {
                        // Create the HTML list for options
                        $html = '<ul>';
                        foreach ($row->filters as $option) {
                            $html .= '<li>' . $option->name . '</li>';
                        }
                        $html .= '</ul>';
                    } else {
                        // If no options are available
                        $html = 'No filters available';
                    }

                    // Return the generated HTML
                    return $html;
                })
                ->addColumn('action', function ($row) {
                    return '<a href="' . route('admin.subcategory.edit', $row->id) . '" class="btn btn-warning"><i class="fas fa-edit"></i></a>
                                            <form action="' . route('admin.subcategory.destroy', $row->id) . '" method="POST" style="display: inline;">
                                                ' . csrf_field() . '
                                                ' . method_field("DELETE") . '
                                                <button type="submit" class="btn btn-danger" onclick="return confirm(\'Are you sure?\')"><i class="fas fa-trash"></i></button>
                                            </form>';
                })
                ->rawColumns(['status', 'filter', 'action'])
                ->make(true);
        }
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
