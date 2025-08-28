<?php

namespace App\Http\Controllers;

use App\Models\Posters;
use Intervention\Image\Laravel\Facades\Image;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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

        // Start a transaction
        return DB::transaction(function () use ($request) {

            // Insert into DB first (to get the ID)
            $poster = Posters::create([
                'name' => $request->name,
                'title' => $request->title,
                'legacyId' => $request->legacyId,
                'tv' => $request->tv
            ]);

            $image = $request->file('image');
            $tv = $request->tv;
            $filename = "{$poster->id}.png";

            $targetWidth = 1080;
            $targetHeight = 1920;

            $resized = Image::read($image)
                ->resize($targetWidth, $targetHeight, function ($constraint) {
                    $constraint->aspectRatio();
                    $constraint->upsize();
                });

            $savePath = storage_path("app/public/slides/{$tv}/{$filename}");

            // Try saving the file
            $resized->save($savePath, 100);

            // If we reach here, both DB insert + image save succeeded
            return back()->with('success', 'Poster uploaded successfully');
        });
    }

    public function delete($id)
    {
        $poster = Posters::findOrFail($id);

        Storage::disk('public')->delete('slides/' . $poster->tv . '/' . $poster->id . '.png');
        $poster->delete();

        return redirect()->route('slideDashboard')->with('success', 'Post deleted.');
    }

    //simple dashboard redirect
    public function index(Request $request)
    {
        $posters = Posters::orderBy('tv')->orderBy('id')->get();

        $grouped = $posters->groupBy('tv');

        return view('/dashboard', compact('grouped'));
    }

    public function updateIndex(Request $request)
    {
        $poster = Posters::find($request->id);

        return view('/update', compact('poster'));
    }

    public function updateSlide(Request $request){
        $validated = $request->validate([
            'id' => 'string',
            'image' => 'image|max:20480',
            'name' => 'string|max:255',
            'title' => 'string|max:255',
            'legacyId' => 'string|max:255',
            'tv' => 'string|max:255'
        ]);


        $poster = Posters::findOrFail($request->id);

        // Start a transaction
        return DB::transaction(function () use ($request, $validated, $poster) {

            $poster->update([
                'name' => $validated['name'],
                'title' => $validated['title'],
                'legacyId' => $validated['legacyId'],
                'tv' => $validated['tv']
            ]);

        // Only process the image if it was uploaded
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $tv = $request->tv;
            $filename = "{$poster->id}.png";

            $targetWidth = 1080;
            $targetHeight = 1920;

            $resized = Image::read($image)
                ->resize($targetWidth, $targetHeight, function ($constraint) {
                    $constraint->aspectRatio();
                    $constraint->upsize();
                });

            $savePath = storage_path("app/public/slides/{$tv}/{$filename}");
            $resized->save($savePath, 100);
        }

            // If we reach here, both DB insert + image save succeeded
            return redirect()->route('slideDashboard');
        });
    }
}
