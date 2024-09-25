<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Offer;
use App\Models\User;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        // Initialize an array to hold games for each letter
        $gamesByLetter = [];

        // Loop through the alphabet
        foreach (range('A', 'Z') as $letter) {
            $gamesByLetter[$letter] = Category::with('subCategories')
                ->where('name', 'like', $letter . '%')
                ->orWhere('name', 'like', strtolower($letter) . '%')
                ->get();
        }

        // Prepare data for view
        return view('frontend.home', [
            'gameswithA' => $gamesByLetter['A'],
            'gameswithB' => $gamesByLetter['B'],
            'gameswithC' => $gamesByLetter['C'],
            'gameswithD' => $gamesByLetter['D'],
            'gameswithE' => $gamesByLetter['E'],
            'gameswithF' => $gamesByLetter['F'],
            'gameswithG' => $gamesByLetter['G'],
            'gameswithH' => $gamesByLetter['H'],
            'gameswithI' => $gamesByLetter['I'],
            'gameswithJ' => $gamesByLetter['J'],
            'gameswithK' => $gamesByLetter['K'],
            'gameswithL' => $gamesByLetter['L'],
            'gameswithM' => $gamesByLetter['M'],
            'gameswithN' => $gamesByLetter['N'],
            'gameswithO' => $gamesByLetter['O'],
            'gameswithP' => $gamesByLetter['P'],
            'gameswithQ' => $gamesByLetter['Q'],
            'gameswithR' => $gamesByLetter['R'],
            'gameswithS' => $gamesByLetter['S'],
            'gameswithT' => $gamesByLetter['T'],
            'gameswithU' => $gamesByLetter['U'],
            'gameswithV' => $gamesByLetter['V'],
            'gameswithW' => $gamesByLetter['W'],
            'gameswithX' => $gamesByLetter['X'],
            'gameswithY' => $gamesByLetter['Y'],
            'gameswithZ' => $gamesByLetter['Z'],
        ]);
    }



    public function showdetails(string $slug) {
        $category = Category::with('subCategories')->where('slug', $slug)->first();
        // dd($category);
        return view('frontend.details', compact('category'));
    }


    // public function subcatpage(string $slug) {

    //     $subcategory = SubCategory::where('slug', $slug)->with('category')->first();
    //     // dd($subcategory->toArray());
    //     if ($subcategory && $subcategory->category) {
    //         $categoryId = $subcategory->category->id;
    //     $category = Category::where('id',$categoryId)->with('subCategories')->first();

    //     }
    //     return view('front.subcategory', compact('subcategory','category'));
    // }


    public function subcatpage(string $slug, Request $request) {
        $subcategory = SubCategory::with(['category', 'filters.options'])
        ->with(['offercategory' => function ($query) {
            $query->select('id','name');
            $query->where('status',1);
        }])->where('slug', $slug)->first();
        
        if ($subcategory && $subcategory->category) {
            $categoryId = $subcategory->category->id;
            $category = Category::where('id', $categoryId)
                    ->with(['subCategories' => function ($query) {
                        $query->with(['offers' => function ($query) {
                            $query->select('id', 'stock', 'sub_category_id') // Include foreign key
                                ->where('status', 1);
                        }]);
                    }])
                    ->first();
        }

        
        if (!$subcategory) {
            abort(404);
        }
        session()->forget(['sub_category_id', 'offer_category_id']);
        session([
            'sub_category_id' => $subcategory->id,
            'sub_category_slug' => $subcategory->slug,
            'offer_category_id' => $subcategory->offer_category_id,
        ]);

        // Fetch items based on selected filters
        $itemsQuery = Offer::where('sub_category_id', $subcategory->id)->whereoffer_category_id($subcategory->offer_category_id)->wherestatus(1);
        // foreach ($selectedFilters as $filterId => $value) {
        //     if (is_array($value)) {
        //         $itemsQuery->whereIn('filter_id', $value);
        //     } else {
        //         $itemsQuery->where('filter_id', $value);
        //     }
        // }
        $items = $itemsQuery->paginate(20); // Pagination added

        $seller_obj = new User();
        return view('frontend.subcategory', compact('subcategory', 'items','category','seller_obj'));
    }


}
