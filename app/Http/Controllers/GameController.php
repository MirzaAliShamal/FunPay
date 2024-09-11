<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;


class GameController extends Controller
{
    public function index()
    {
        $games = Game::with(['category', 'subCategory'])->get();
        return view('game.index', compact('games'));
    }

    public function create()
    {
        $categories = Category::all();
        $subCategories = SubCategory::all();
        return view('game.create', compact('categories', 'subCategories'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'category_id' => 'required|exists:categories,id',
            'sub_category_id' => 'required|exists:sub_categories,id',
            'name' => 'required|string|max:255',
            'description' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'status' => 'nullable|integer',
        ]);

        $imagePath = $request->file('image')->store('game_images', 'public');

        Game::create([
            'category_id' => $request->category_id,
            'sub_category_id' => $request->sub_category_id,
            'name' => $request->name,
            'description' => $request->description,
            'image' => $imagePath,
            'status' => $request->status,
        ]);

        return redirect()->route('admin.game')->with('success', 'Game created successfully.');
    }

    public function edit(Game $game)
    {
        $categories = Category::all();
        $subCategories = SubCategory::all();
        return view('game.edit', compact('game', 'categories', 'subCategories'));
    }

    public function update(Request $request, Game $game)
    {
        $request->validate([
            'category_id' => 'required|exists:categories,id',
            'sub_category_id' => 'required|exists:sub_categories,id',
            'name' => 'required|string|max:255',
            'description' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'status' => 'nullable|integer',
        ]);

        if ($request->hasFile('image')) {
            $existingImagePath = $game->image;
            if (Storage::disk('public')->exists($existingImagePath)) {
                Storage::disk('public')->delete($existingImagePath);
            }
            $imagePath = $request->file('image')->store('game_images', 'public');
            $game->image = $imagePath;
        }

        $game->update([
            'category_id' => $request->category_id,
            'sub_category_id' => $request->sub_category_id,
            'name' => $request->name,
            'description' => $request->description,
            'status' => $request->status,
        ]);

        return redirect()->route('admin.game')->with('success', 'Game updated successfully.');
    }

    public function destroy(Game $game)
    {
        if (Storage::disk('public')->exists($existingImagePath)) {
            Storage::disk('public')->delete($existingImagePath);
        }
        $game->delete();
        return redirect()->route('admin.game')->with('success', 'Game deleted successfully.');
    }
}
