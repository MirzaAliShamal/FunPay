<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OfferCategory;
use App\Models\OfferField;
use Yajra\DataTables\Facades\DataTables;

class OfferFieldController extends Controller
{
    public function index()
    {
        return view('offerfield.index');
    }

    public function getOfferFieldData()
    {
        if (request()->ajax()) {
            $offer_fields = OfferField::with('offercategory')->get();
            return DataTables::of($offer_fields)
                ->addColumn('offer category', function ($row) {
                    return $row->offercategory->name;
                })
                ->addColumn('label', function ($row) {
                    return $row->label;
                })
                ->addColumn('values', function ($row) {
                    return $row->values;
                })
                ->addColumn('status', function ($row) {
                    return $row->status == 1 ? '<div class="badge bg-success" style="">Active</div>' : '<div class="badge bg-danger">Inactive</div>';
                })
                ->addColumn('action', function ($row) {
                    return '<a href="' . route('admin.offerfield.edit', $row->id) . '" class="btn btn-warning"><i class="fas fa-edit"></i></a>
                                            <form action="' . route('admin.offerfield.destroy', $row->id) . '" method="POST" style="display: inline;">
                                                 ' . csrf_field() . '
                                                ' . method_field("DELETE") . '
                                                <button type="submit" class="btn btn-danger" onclick="return confirm(\'Are you sure?\')"><i class="fas fa-trash"></i></button>
                                            </form>';
                })
                ->rawColumns(['status', 'action'])
                ->make(true);
        }
    }

    public function create()
    {
        $module_data = OfferCategory::all();
        return view('offerfield.create', compact('module_data'));
    }


    public function store(Request $request)
    {

        $request->validate([
            'label' => 'required|string|max:255',
            // 'offer_category_id' => 'required|integer|exists:offer_categories,id',
        ]);

        OfferField::create($request->all());
        return redirect()->route('admin.offerfield')->with('success', 'Sub-Category created successfully.');
    }


    public function edit($id)
    {
        $module_data = OfferCategory::all();
        $edit_data = OfferField::findOrFail($id);

        return view('offerfield.edit', compact('edit_data', 'module_data'));
    }


    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
        ]);
        $offerType = OfferField::findOrFail($id);
        $offerType->update($request->all());
        return redirect()->route('admin.offerfield')->with('success', 'Sub-Category updated successfully.');
    }


    public function destroy($id)
    {
        $subCategory = OfferField::findOrFail($id);
        $subCategory->delete();
        return redirect()->route('admin.offerfield')->with('success', 'Sub-Category deleted successfully.');
    }
}
