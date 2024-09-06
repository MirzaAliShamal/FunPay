<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OfferCategory;

class OfferCategoryController extends Controller
{
     /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $offer_categories = OfferCategory::all();
        return view('offercategory.index', compact('offer_categories'));
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
