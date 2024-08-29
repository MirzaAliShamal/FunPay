<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\Frontend\HomeController as FrontController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/clear', function () {
    Artisan::call('optimize:clear');
    return "Cleared!";
});

// **************************** Frontend Routes ****************************
Route::get('/', [FrontController::class, 'index'])->name('homepage');

// **************************** Backend Routes ****************************
Route::get('/admin', [HomeController::class, 'index'])->name('indexlogin');
Route::get('/login', [HomeController::class, 'index'])->name('login');
Route::post('/user-login', [HomeController::class, 'userLogin'])->name('userlogin');
Route::get('/logout', [HomeController::class, 'logoutUser'])->name('logoutuser');

Route::middleware('auth')->prefix('admin')->name('admin.')->group(function () {

    // **************************** Dashboard ****************************
    Route::get('dashboard', [HomeController::class, 'home'])->name('dashboard');

    // **************************** Category ****************************
    Route::resource('category', CategoryController::class);

    // **************************** Sub Category ****************************
    Route::resource('subcategory', SubCategoryController::class);

    // **************************** Games ****************************
    Route::get('/games', [GameController::class, 'index'])->name('game');
    Route::get('/games/create', [GameController::class, 'create'])->name('game.create');
    Route::post('/games/store', [GameController::class, 'store'])->name('game.store');
    Route::get('/games/edit', [GameController::class, 'edit'])->name('game.edit');
    Route::post('/games/update', [GameController::class, 'update'])->name('game.update');

});

// **************************** User ****************************
Route::get('/user-profile', [UserController::class, 'profile'])->name('userprofile')->middleware('auth');
Route::post('/update-profile', [UserController::class, 'updateProfile'])->name('updateprofile')->middleware('auth');