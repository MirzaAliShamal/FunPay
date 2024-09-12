<?php

use App\Http\Controllers\Admin\FilterController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\Frontend\HomeController as FrontController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\OfferCategoryController;
use App\Http\Controllers\OfferTypeController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/clear', function () {
 Artisan::call('optimize:clear');
 return "Cleared!";
});

// **************************** Frontend Routes ****************************
Route::get('/home', [FrontController::class, 'index'])->name('homepage');
Route::get('/game-details/{slug}', [FrontController::class, 'showdetails'])->name('game.details');
Route::get('/en/game-details/{slug}', [FrontController::class, 'subcatpage'])->name('subcatpage');

// **************************** Backend Routes ****************************
Route::get('/admin', [HomeController::class, 'index'])->name('indexlogin');
Route::get('/login', [HomeController::class, 'index'])->name('login');
Route::post('/user-login', [HomeController::class, 'userLogin'])->name('userlogin');
Route::get('/logout', [HomeController::class, 'logoutUser'])->name('logoutuser');

Route::prefix('admin')->group(function () {
    Route::resource('filters', FilterController::class);
});

Route::middleware('auth')->prefix('admin')->name('admin.')->group(function () {

    // **************************** Dashboard ****************************
    Route::get('/dashboard', [HomeController::class, 'home'])->name('dashboard');

    // filter routes
    // Route::get('/filters', [HomeController::class, 'filter'])->name('filter');


 // **************************** Category ****************************
 Route::resource('category', CategoryController::class);

// **************************** Sub Category ****************************
    Route::get('subcategory', [SubCategoryController::class, 'index'])->name('subcategory.index');
    Route::get('subcategory/create', [SubCategoryController::class, 'create'])->name('subcategory.create');
    Route::post('subcategory', [SubCategoryController::class, 'store'])->name('subcategory.store');
    Route::get('subcategory/{subcategory}/edit', [SubCategoryController::class, 'edit'])->name('subcategory.edit');
    Route::put('subcategory/{subcategory}', [SubCategoryController::class, 'update'])->name('subcategory.update');
    Route::delete('subcategory/{subcategory}', [SubCategoryController::class, 'destroy'])->name('subcategory.destroy');

 // **************************** Games ****************************
 Route::get('/game', [GameController::class, 'index'])->name('game');
 Route::get('/game/create', [GameController::class, 'create'])->name('game.create');
 Route::post('/game/store', [GameController::class, 'store'])->name('game.store');
 Route::get('/game/edit/{game}', [GameController::class, 'edit'])->name('game.edit');
 Route::put('/game/update/{game}', [GameController::class, 'update'])->name('game.update');
 Route::delete('/game/destroy/{game}', [GameController::class, 'destroy'])->name('game.destroy');

 // **************************** Offer Category ****************************
 Route::get('/offer', [OfferCategoryController::class, 'index'])->name('offer');
 Route::get('/offer/create', [OfferCategoryController::class, 'create'])->name('offer.create');
 Route::post('/offer/store', [OfferCategoryController::class, 'store'])->name('offer.store');
 Route::get('/offer/edit/{id}', [OfferCategoryController::class, 'edit'])->name('offer.edit');
 Route::put('/offer/update/{id}', [OfferCategoryController::class, 'update'])->name('offer.update');
 Route::delete('/offer/destroy/{id}', [OfferCategoryController::class, 'destroy'])->name('offer.destroy');

 // **************************** Offer Type ****************************
 Route::get('/offertype', [OfferTypeController::class, 'index'])->name('offertype');
 Route::get('/offertype/create', [OfferTypeController::class, 'create'])->name('offertype.create');
 Route::post('/offertype/store', [OfferTypeController::class, 'store'])->name('offertype.store');
 Route::get('/offertype/edit/{game}', [OfferTypeController::class, 'edit'])->name('offertype.edit');
 Route::put('/offertype/update/{game}', [OfferTypeController::class, 'update'])->name('offertype.update');
 Route::delete('/offertype/destroy/{game}', [OfferTypeController::class, 'destroy'])->name('offertype.destroy');

});

// **************************** User ****************************
Route::get('/user-profile', [UserController::class, 'profile'])->name('userprofile')->middleware('auth');
Route::post('/update-profile', [UserController::class, 'updateProfile'])->name('updateprofile')->middleware('auth');
