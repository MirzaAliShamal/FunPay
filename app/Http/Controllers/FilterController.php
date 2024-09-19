<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Filter;
use Illuminate\Http\Request;

class FilterController extends Controller
{
    public function index()
    {
        $filters = Filter::with('options')->get();
        // dd($filters);
        return view('filters.index', compact('filters'));
    }

    public function create()
    {
        return view('filters.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|string|in:text,textarea,dropdown,checkbox,radio,button,file,date,range',
        ]);

        $filter = Filter::create($request->only('name', 'type'));

        // Handle options for dropdown, checkbox, or radio types
        if ($request->filled('options') && in_array($filter->type, ['dropdown', 'checkbox', 'radio'])) {
            $options = array_map('trim', explode(',', $request->input('options')));
            foreach ($options as $option) {
                $filter->options()->create(['name' => $option]);
            }
        }

        return redirect()->route('filters.index')->with('success', 'Filter created successfully.');
    }


    public function edit(string $id)
    {
        $filter = Filter::with('options')->findOrFail($id);
        return view('filters.edit', compact('filter'));
    }



    public function update(Request $request, Filter $filter)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|string|in:text,textarea,dropdown,checkbox,radio,button,file,date,range',
        ]);


        $filter->update($request->only('name', 'type'));

        if ($request->filled('options')) {
            $filter->options()->delete(); // Clear existing options
            $options = array_map('trim', explode(',', $request->input('options')));
            foreach ($options as $option) {
                $filter->options()->create(['name' => $option]);
            }
        }

        return redirect()->route('filters.index')->with('success', 'Filter updated successfully.');
    }

    public function destroy(Filter $filter)
    {
        $filter->delete();
        return redirect()->route('filters.index')->with('success', 'Filter deleted successfully.');
    }
}
