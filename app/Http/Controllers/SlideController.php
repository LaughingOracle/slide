<?php

namespace App\Http\Controllers;

use App\Models\Posters;
use Illuminate\Http\Request;

class SlideController extends Controller
{
    //viewing slideshow according as their 'tv' column
    public function index(String $tv){
        $posters = Posters::where('tv', $tv)->get();
        return view('slideshow', compact('posters'));
    }

    //function for searching spesifics images. it's on AJAX btw, called every letter typed in the search bar
    public function search(Request $request)
    {
        $column = $request->input('column');
        $query = $request->input('query');

        // Whitelist columns to prevent SQL injection
        $allowed = ['name', 'title', 'legacyId'];
        if (!in_array($column, $allowed)) {
            return response()->json([], 400);
        }

        //sql logic. might need some revision
        $results = Posters::where($column, 'like' , '%' . $query . "%" )->get();

        return response()->json($results);
    }

    //simple view poster by id
    public function view(String $id){
        $poster = Posters::find($id);
        return view('view', compact('poster'));  
    }

}
