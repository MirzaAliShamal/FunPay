<?php

namespace App\Http\Controllers;

use App\Models\organizationlogo;
use Illuminate\Http\Request;

class OrganizationlogoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('logo.manage');
    }

    public function updateOrgLogo(Request $request)
    {
        $request->validate([
        'org_logo' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ],
        [
            'org_logo.required' => 'Organization Profile is required.',
        ]);

        if ($request->hasFile('org_logo')) {
            $destinationPath = public_path('organizationlogo');
            $existingLogo = OrganizationLogo::first();
            if($existingLogo){
                unlink($destinationPath . '/' . $existingLogo->org_logo);
            }
            
            $fileName = time() . '_' . $request->org_logo->getClientOriginalName();

            $existingLogo = OrganizationLogo::truncate();
            $request->org_logo->move($destinationPath, $fileName);

            // Update or create the record
            OrganizationLogo::Create([
                'id' => 1,
                'org_logo' => $fileName
            ]);

            return redirect()->back()->with('success', 'Profile updated successfully.');
        }

        return redirect()->back()->with('error', 'Please select a valid image.');
    } 

   
}
