<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Seller;
use Yajra\DataTables\Facades\DataTables;

class SellersController extends Controller
{
    public function index()
    {
        return view('seller.index');
    }
    
    public function getSellerData()
    {
        if (request()->ajax()) {
            $seller = Seller::all();
            return DataTables::of($seller)
                ->addColumn('status', function ($row) {
                    return $row->status == 1 ? '<div class="badge bg-success" style="">Active</div>' : '<div class="badge bg-danger">Inactive</div>';
                })
                ->addColumn('action', function ($row) {
                    return '<a href="'. route('admin.seller.show', $row->id) .'" class="btn btn-warning"><i class="fas fa-eye"></i></a>
                                            <form action="'. route('admin.seller.destroy', $row->id) .'" method="POST" style="display: inline;">
                                                ' . csrf_field() . '
                                                ' . method_field("DELETE") . '
                                                <button type="submit" class="btn btn-danger" onclick="return confirm(\'Are you sure?\')"><i class="fas fa-trash"></i></button>
                                            </form>';
                })
                ->rawColumns(['status', 'action'])
                ->make(true);
        }
    }

    public function show($id)
    {
        $seller_data = Seller::findOrFail($id); // Eager load filters and their options

        return view('seller.view', compact('seller_data'));
    }

    public function update(Request $request, $id)
    {
        $data = array(
            'status' => $request->status,
        );
        Seller::whereid($id)->update($data);
        return redirect()->route('admin.seller')->with('success', 'Data updated successfully.');
    }

    public function destroy($id)
    {
        $subCategory = Seller::findOrFail($id);
        $subCategory->delete();
        return redirect()->route('admin.seller')->with('success', 'Data deleted successfully.');
    }
}
