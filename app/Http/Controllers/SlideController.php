<?php

namespace App\Http\Controllers;

use App\Models\Posters;
use Illuminate\Http\Request;

class SlideController extends Controller
{
    //
    public function index(String $tv){
        $posters = Posters::where('tv', $tv)->get();
        return view('slideshow', compact('posters'));
    }

    public function search(Request $request)
    {
        $column = $request->input('column');
        $query = $request->input('query');

        

        // Whitelist columns to prevent SQL injection
        $allowed = ['name', 'title', 'legacyId'];
        if (!in_array($column, $allowed)) {
            return response()->json([], 400);
        }

        $results = Posters::where($column, $query)->where("tv", $request->input('tv'))->get();

        return response()->json($results);
    }

    public function view(String $id){
        $poster = Posters::find($id);

        return view('view', compact('poster'));  
    }

}
