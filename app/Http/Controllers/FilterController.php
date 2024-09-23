<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Filter;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class FilterController extends Controller
{
    public function index()
    {
        return view('filters.index');
    }

    public function getFilterData()
    {
        if (request()->ajax()) {
            $filters = Filter::with('options')->get();
            return DataTables::of($filters)
                ->addColumn('name', function ($row) {
                    return $row->name;
                })
                ->addColumn('type', function ($row) {
                    return $row->type;
                })
                ->addColumn('option', function ($row) {
                    if ($row->options->isNotEmpty()) {
                        // Create the HTML list for options
                        $html = '<ul>';
                        foreach ($row->options as $option) {
                            $html .= '<li>' . $option->name . '</li>';
                        }
                        $html .= '</ul>';
                    } else {
                        // If no options are available
                        $html = 'No options available';
                    }
                
                    // Return the generated HTML
                    return $html;
                })
                ->addColumn('action', function ($row) {
                    return '  <a href="' . route('filters.edit', $row->id) . '" class="btn btn-warning btn-sm">Edit</a>
           <form action="' . route('filters.destroy', $row->id) . '" method="POST" style="display:inline;">
            ' . csrf_field() . '
            ' . method_field("DELETE") . '
            <button type="submit" class="btn btn-danger btn-sm"
             onclick="return confirm(\'Are you sure you want to delete this filter?\');">Delete</button>
           </form>';
                })
                ->rawColumns(['option', 'action'])
                ->make(true);
        }
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
