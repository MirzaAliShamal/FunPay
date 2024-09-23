<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Buyer;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\Facades\DataTables;
class BuyerController extends Controller
{

    public function index()
    {
        return view('frontend.buyer.register');
    }

    public function store(Request $request)
    {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        // Create the buyer
        $buyer = new Buyer();
        $buyer->name = $request->name;
        $buyer->email = $request->email;
        $buyer->password = Hash::make($request->password); // Hash the password
        $buyer->save();

        // Redirect or return a response
        if ($buyer) {
            return redirect()->route('buyer.register')->with('success', 'Registration successful! Please log in.');
        }
    }

    public function buyerindex()
    {
        return view('buyer.index');
    }

    public function getBuyerData()
    {
        if (request()->ajax()) {
            $buyer = Buyer::get();
            return DataTables::of($buyer)
                ->addColumn('action', function ($row) {
                    return '<a href="' . route('admin.buyer.show', $row->id) . '" class="btn btn-warning"><i class="fas fa-eye"></i></a>
                                            <form action="' . route('admin.buyer.destroy', $row->id) . '" method="POST" style="display: inline;">
                                                ' . csrf_field() . '
                                                ' . method_field("DELETE") . '
                                                <button type="submit" class="btn btn-danger" onclick="return confirm(\'Are you sure?\')"><i class="fas fa-trash"></i></button>
                                            </form>';
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function show($id)
    {
        $buyer_data = Buyer::findOrFail($id); // Eager load filters and their options

        return view('buyer.view', compact('buyer_data'));
    }

    public function update(Request $request, $id)
    {
        $data = array(
            'status' => $request->status,
        );
        Buyer::whereid($id)->update($data);
        return redirect()->route('admin.buyer')->with('success', 'Data updated successfully.');
    }

    public function destroy($id)
    {
        $subCategory = Buyer::findOrFail($id);
        $subCategory->delete();
        return redirect()->route('admin.buyer')->with('success', 'Data deleted successfully.');
    }

}
