<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GameController extends Controller
{
    public function index()
    {
        return view('games.index');
    }

    public function create()
    {
        return view('games.create');
    }

    public function store()
    {
        //
    }

    public function edit()
    {
        return view('games.edit');
    }

    public function update()
    {
        //
    }
}
