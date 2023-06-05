<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
 */

Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['prefix' => 'user', 'as' => 'user.'], function () {
    Route::get('/', [\App\Http\Controllers\User\MainController::class, 'adminHome'])->name('user-home');
    Route::resource('image', \App\Http\Controllers\User\PhotoController::class);
    Route::get('image-gallery', [\App\Http\Controllers\User\PhotoController::class, 'getData']);
});
