<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Game;
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
        return view('front.home', [
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
        return view('front.details', compact('category'));
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
        $subcategory = SubCategory::with(['category', 'filters'])->where('slug', $slug)->first();

        if ($subcategory && $subcategory->category) {
            $categoryId = $subcategory->category->id;
            $category = Category::where('id', $categoryId)->with('subCategories')->first();

            // Retrieve selected filters from the request
            $selectedFilters = $request->input('filters', []);

            // Fetch items based on selected filters
            $itemsQuery = Game::where('sub_category_id', $subcategory->id);
            if (!empty($selectedFilters)) {
                $itemsQuery->whereIn('filter_id', $selectedFilters);
            }
            $items = $itemsQuery->get();
        }

        return view('front.subcategory', compact('subcategory', 'category', 'items'));
    }
}
