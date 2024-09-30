<?php

use App\Http\Controllers\FilterController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\SellersController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Frontend\BuyerController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\Frontend\HomeController as FrontController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\OfferCategoryController;
use App\Http\Controllers\Frontend\OfferController;
use App\Http\Controllers\OfferTypeController;
use App\Http\Controllers\OfferFieldController;
use App\Http\Controllers\Frontend\SellerController;
use App\Http\Controllers\Frontend\MessageController;
use App\Http\Controllers\Frontend\ReviewController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Frontend\OrderController;
use App\Http\Controllers\Frontend\ProfileController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/clear', function () {
    Artisan::call('optimize:clear');
    return "Cleared!";
});
Route::get('/message', [MessageController::class, 'index'])->name('message');
Route::post('/send-message', [MessageController::class, 'sendMessage'])->name('send.message');
Route::get('/unread-messages-count', [MessageController::class, 'getUnreadMessageCount'])->name('unread.messages.count');
Route::post('/mark-messages-read', [MessageController::class, 'markMessagesAsRead'])->name('mark.messages.read');
Route::post('/chat-listing', [MessageController::class, 'chatListing'])->name('chat.listing');
Route::post('/runner', [MessageController::class, 'getCurrentUserMessage'])->name('chat.runner');
Route::get('/chatnode/{id}', [MessageController::class, 'getSelectedUserMessage'])->name('chat.usermessages');

 // **************************** Checkout ****************************
 Route::get('/lots/offer/{id}', [CheckoutController::class, 'index'])->name('buyer.checkout');


// **************************** Seller Register ****************************

Route::get('/seller-register', [SellerController::class, 'index'])->name('seller.register');
Route::get('/seller/register', [SellerController::class, 'SecondIndex'])->name('step.two');
Route::get('/seller/register/form', [SellerController::class, 'sellerregisterform'])->name('step.three');
Route::post('/sellers/store', [SellerController::class, 'store'])->name('sellers.store');

// **************************** Seller offers ****************************
Route::get('/seller/offers', [OfferController::class, 'index'])->name('offer.index');
Route::get('/seller/offer/create', [OfferController::class, 'create'])->name('offer.create');
Route::get('/seller/offer/edit/{id}', [OfferController::class, 'edit'])->name('offer.edit');
Route::get('/seller/offer/delete/{id}', [OfferController::class, 'delete'])->name('offer.delete');
Route::get('/delete/offer/image', [OfferController::class, 'deleteImage'])->name('offer.deleteImage');
Route::post('/create/frontend/offer', [OfferController::class, 'store'])->name('create.frontend.offer');
Route::post('/update/frontend/offer/{id}', [OfferController::class, 'update'])->name('update.frontend.offer');


// **************************** Frontend Routes for login and logout ****************************
Route::get('account/login', [LoginController::class, 'index'])->name('user.seller.login');
Route::post('account/login/post', [LoginController::class, 'userlogin'])->name('login.post');
Route::get('/frontend/logout', [LoginController::class, 'logout'])->name('user.seller.logout');

// **************************** Buyer Register ****************************

Route::get('/account/register', [BuyerController::class, 'index'])->name('buyer.register');
Route::post('/buyer/store', [BuyerController::class, 'store'])->name('buyer.store');


// **************************** Order Routes ****************************
Route::get('/make-payment-session', [OrderController::class, 'makePaymentSession'])->name('makepaymentsession');
Route::post('/order/payment/details', [OrderController::class, 'index'])->name('order.payment');
Route::get('/make-payment-session', [OrderController::class, 'index'])->name('paymenturl');
Route::get('/initiate-stripe-payment', [OrderController::class, 'initiateStripePayment'])->name('initiatestripepayment');
Route::get('/stripe-payment-process', [OrderController::class, 'index']);

// **************************** Account Routes ****************************
Route::get('/account-profile', [ProfileController::class, 'index'])->name('account.profile');
Route::get('/stripe/account/connection', [ProfileController::class, 'createConnectedAccount'])->name('stripe.account.connection');

// **************************** Frontend Routes ****************************
Route::get('/', [FrontController::class, 'index'])->name('homepage');
Route::get('/game-details/{slug}', [FrontController::class, 'showdetails'])->name('game.details');
Route::get('/en/game-details/{slug}', [FrontController::class, 'subcatpage'])->name('subcatpage');

// **************************** Backend Routes for login and logout ****************************
Route::get('/admin', [HomeController::class, 'index'])->name('indexlogin');
Route::get('/login', [HomeController::class, 'index'])->name('login');
Route::post('/user-login', [HomeController::class, 'userLogin'])->name('userlogin');
Route::get('/logout', [HomeController::class, 'logoutUser'])->name('logoutuser');




// **************************** Filters ****************************

Route::middleware('auth')->prefix('admin')->group(function () {
    Route::get('filters/get-data', [FilterController::class, 'getFilterData'])->name('admin.filter.data');
    Route::resource('filters', FilterController::class);
});

Route::middleware('auth')->prefix('admin')->name('admin.')->group(function () {

    // **************************** Dashboard ****************************
    Route::get('/dashboard', [DashboardController::class, 'home'])->name('dashboard');
    Route::get('/monthly-data', [DashboardController::class, 'getMonthlyData'])->name('monthly.data');

    // **************************** Category ****************************
    Route::get('category/get-data', [CategoryController::class, 'getCategoryData'])->name('category.data');
    Route::resource('category', CategoryController::class);

    // **************************** Sub Category ****************************
    Route::get('subcategory', [SubCategoryController::class, 'index'])->name('subcategory.index');
    Route::get('subcategory/get-data', [SubCategoryController::class, 'getSubcategoryData'])->name('subcategory.data');
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
    Route::get('offer/get-data', [OfferCategoryController::class, 'getOfferCategoryData'])->name('offer.data');
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

    // **************************** Offer Field ****************************
    Route::get('/offerfield', [OfferFieldController::class, 'index'])->name('offerfield');
    Route::get('offerfield/get-data', [OfferFieldController::class, 'getOfferFieldData'])->name('offerField.data');
    Route::get('/offerfield/create', [OfferFieldController::class, 'create'])->name('offerfield.create');
    Route::post('/offerfield/store', [OfferFieldController::class, 'store'])->name('offerfield.store');
    Route::get('/offerfield/edit/{game}', [OfferFieldController::class, 'edit'])->name('offerfield.edit');
    Route::put('/offerfield/update/{game}', [OfferFieldController::class, 'update'])->name('offerfield.update');
    Route::delete('/offerfield/destroy/{game}', [OfferFieldController::class, 'destroy'])->name('offerfield.destroy');


    // **************************** Sellers ****************************

    Route::get('/seller', [SellersController::class, 'index'])->name('seller');
    Route::get('seller/get-data', [SellersController::class, 'getSellerData'])->name('seller.data');
    Route::get('/seller/show/{id}', [SellersController::class, 'show'])->name('seller.show');
    Route::delete('/seller/destroy/{id}', [SellersController::class, 'destroy'])->name('seller.destroy');
    Route::post('/seller/update/{id}', [SellersController::class, 'update'])->name('seller.update');



    // **************************** Buyers ****************************

    Route::get('/buyers', [BuyerController::class, 'buyerindex'])->name('buyer');
    Route::get('buyer/get-data', [BuyerController::class, 'getBuyerData'])->name('buyer.data');
    Route::get('/buyer/show/{id}', [BuyerController::class, 'show'])->name('buyer.show');
    Route::delete('/buyer/destroy/{id}', [BuyerController::class, 'destroy'])->name('buyer.destroy');
    Route::post('/buyer/update/{id}', [BuyerController::class, 'update'])->name('buyer.update');
});

// **************************** User ****************************
Route::get('/user-profile', [UserController::class, 'profile'])->name('userprofile')->middleware('auth');
Route::post('/update-profile', [UserController::class, 'updateProfile'])->name('updateprofile')->middleware('auth');

// **************************** Reviews ****************************
Route::post('/reviews', [ReviewController::class, 'store'])->name('reviews.store');

