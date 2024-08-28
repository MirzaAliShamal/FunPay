<?php

use Illuminate\Support\Facades\Route;


// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('/clear', function () {
    Artisan::call('optimize:clear');
    return "Cleared!";
});

//////////////////////////////////////////// Frontend Routes /////////////////////////////////////
Route::get('/', ['uses' =>'App\Http\Controllers\Frontend\HomeController@index','as' => 'homepage']);








//////////////////////////////////////////// Backend Routes /////////////////////////////////////

Route::get('/admin', ['uses' =>'App\Http\Controllers\HomeController@index','as' => 'indexlogin']);
Route::get('/login', ['uses' =>'App\Http\Controllers\HomeController@index','as' => 'login']);
Route::get('/dashboard', ['middleware' => ['auth'],'uses' =>'App\Http\Controllers\HomeController@home','as' => 'dashboard']);
Route::post('/user-login', ['uses' =>'App\Http\Controllers\HomeController@userLogin','as' => 'userlogin']);
Route::get('/logout', ['uses' =>'App\Http\Controllers\HomeController@logoutUser','as' => 'logoutuser']);

//////////////////////////////////////////// Organization logo /////////////////////////////////////
Route::get('/manage-logo', ['middleware' => ['auth'],'uses' =>'App\Http\Controllers\OrganizationlogoController@index','as' => 'managelogo']);
Route::post('/update-logo', ['middleware' => ['auth'],'uses' =>'App\Http\Controllers\OrganizationlogoController@updateOrgLogo','as' => 'updateOrgLogo']);

//////////////////////////////////////////// User /////////////////////////////////////
Route::get('/user-profile', ['middleware' => ['auth'],'uses' =>'App\Http\Controllers\UserController@profile','as' => 'userprofile']);
Route::post('/update-profile', ['middleware' => ['auth'],'uses' =>'App\Http\Controllers\UserController@updateProfile','as' => 'updateprofile']);

