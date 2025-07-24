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

