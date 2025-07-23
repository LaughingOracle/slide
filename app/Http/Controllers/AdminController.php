<?php

namespace App\Http\Controllers;

use App\Models\Posters;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    //

    public function store(Request $request){
        $request->validate([
            'image' => 'required|image|max:20480',
            'name' => 'string|max:255',
            'title' => 'string|max:255',
            'legacyId' => 'string|max:255',
            'tv' => 'string|max:255'
        ]);

        $poster = Posters::create([
            'name' => $request->name,
            'title' => $request->title,
            'legacyId' => $request->legacyId,
            'tv' => $request->tv
        ]);

        $path = $request->file('image')->storeAs('slides', "$poster->id.png", 'public');

        return back()->with('success', 'Poster uploaded successfully');
    }

    public function index(Request $request){

        return view('/dashboard');
    }
}
