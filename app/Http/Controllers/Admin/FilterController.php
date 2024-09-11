<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Filter;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class FilterController extends Controller
{
    // Display a listing of the filters
    public function index()
    {
        $filters = Filter::all();
        $subCategory = SubCategory::all();
        return view('admin.filters.index', compact('filters','subCategory'));
    }

    // Show the form for creating a new filter
    public function create()
    {
        return view('admin.filters.create');
    }

    // Store a newly created filter in storage
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|string|in:text,dropdown,checkbox', // Specify allowed types
        ]);

        Filter::create($request->all());
        return redirect()->route('filters.index')->with('success', 'Filter created successfully.');
    }

    // Show the form for editing the specified filter
    public function edit(Filter $filter)
    {
        return view('admin.filters.edit', compact('filter'));
    }

    // Update the specified filter in storage
    public function update(Request $request, Filter $filter)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|string|in:text,dropdown,checkbox', // Specify allowed types
        ]);

        $filter->update($request->all());
        return redirect()->route('filters.index')->with('success', 'Filter updated successfully.');
    }

    // Remove the specified filter from storage
    public function destroy(Filter $filter)
    {
        $filter->delete();
        return redirect()->route('filters.index')->with('success', 'Filter deleted successfully.');
    }
}
