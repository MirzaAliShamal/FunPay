<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OfferCategory;
use Yajra\DataTables\Facades\DataTables;

class OfferCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('offercategory.index');
    }

    public function getOfferCategoryData()
    {
        if (request()->ajax()) {
            $offer_categories = OfferCategory::select(['id', 'name', 'status']);

            return DataTables::of($offer_categories)
                ->addColumn('status', function ($row) {
                    return $row->status == 1 ? '<div class="badge bg-success" style="">Active</div>' : '<div class="badge bg-danger">Inactive</div>';
                })
                ->addColumn('action', function ($row) {
                    return '<a href="' . route('admin.offer.edit', $row->id) . '"
                                                class="btn btn-warning"><i class="fas fa-edit"></i></a>
                                            <form action="' . route('admin.offer.destroy', $row->id) . '"
                                                method="POST" style="display:inline;">
                                                ' . csrf_field() . '
                                                ' . method_field("DELETE") . '
                                                <button type="submit" class="btn btn-danger" onclick="return confirm(\'Are you sure?\')"><i class="fas fa-trash"></i></button>
                                            </form>';
                })
                ->rawColumns(['status', 'action'])
                ->make(true);
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('offercategory.create');
    }



    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
        ]);

        OfferCategory::create([
            'name' => $request->name,
            'status' => $request->status,
        ]);

        return redirect()->route('admin.offer')->with('success', 'Data created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $offercategory = OfferCategory::findOrFail($id);
        return view('offercategory.edit', compact('offercategory'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
        ]);
        $offercategory = OfferCategory::findOrFail($id);
        $offercategory->update([
            'name' => $request->name,
            'status' => $request->status,
        ]);

        return redirect()->route('admin.offer')->with('success', 'Data updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $OfferCategory = OfferCategory::findOrFail($id);
        $OfferCategory->delete();
        return redirect()->route('admin.offer')->with('success', 'Data deleted successfully.');
    }
}
