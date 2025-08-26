<?php

namespace App\Http\Controllers;

use App\Models\Posters;
use Intervention\Image\Laravel\Facades\Image;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    // data entry function
    public function store(Request $request){
        $request->validate([
            'image' => 'required|image|max:20480',
            'name' => 'string|max:255',
            'title' => 'string|max:255',
            'legacyId' => 'string|max:255',
            'tv' => 'string|max:255'
        ]);

        // simple sql insert
        $poster = Posters::create([
            'name' => $request->name,
            'title' => $request->title,
            'legacyId' => $request->legacyId,
            'tv' => $request->tv
        ]);

        $image = $request->file('image');
        $filename = "$poster->id.png";

        // Define your target size (example: 512x512)
        $targetWidth = 1080;
        $targetHeight = 1920;

        // Resize (upscale or downscale)
        $resized = Image::read($image)
            ->resize($targetWidth, $targetHeight, function ($constraint) {
                $constraint->aspectRatio();   // keep aspect ratio
                $constraint->upsize();        // prevent smaller images from stretching
            });

        // Save processed image
        $resized->save(storage_path('app/public/slides/' . $filename), 100);

        // save to path
        //$path = $request->file('image')->storeAs('slides', "$poster->id.png", 'public');

        return back()->with('success', 'Poster uploaded successfully');
    }

    //simple dashboard redirect
    public function index(Request $request)
    {
        return view('/dashboard');
    }
}
