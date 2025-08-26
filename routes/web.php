<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AdminController;
use App\Http\Controllers\SlideController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/slide/{tv}', [SlideController::class, 'index'])->name('slide.tv');

Route::get('/view/{id}', [SlideController::class, 'view'])->name('view.id');

Route::get('/dashboard', [AdminController::class, 'index'])->name('dashboard');
Route::post('/slide', [AdminController::class, 'store'])->name('slide.store');


Route::get('/search', [SlideController::class, 'search']);


Route::get('/slideshow/{filename}', function ($filename) {
    $path = storage_path('app/public/slides/' . $filename);

    if (!file_exists($path)) {
        abort(404);
    }

    return response()->file($path, [
        'Cache-Control' => 'public, max-age=31536000',
        'Expires' => gmdate('D, d M Y H:i:s \G\M\T', time() + 31536000),
    ]);
});
