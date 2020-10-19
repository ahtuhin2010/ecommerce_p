<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['register' => false]);

Route::get('/', 'Frontend\FrontendController@index');
Route::get('/about-us', 'Frontend\FrontendController@aboutUs')->name('about.us');
Route::get('/contact-us', 'Frontend\FrontendController@contactUs')->name('contact.us');
Route::post('/contact/store', 'Frontend\FrontendController@contactStore')->name('contact.store');
Route::get('/shopping-cart', 'Frontend\FrontendController@shoppingCart')->name('shopping.cart');
Route::get('/product-list', 'Frontend\FrontendController@productList')->name('product.list');
Route::get('/product-category/{category_id}', 'Frontend\FrontendController@categoryWiseProduct')->name('category.wise.product');
Route::get('/product-brand/{brand_id}', 'Frontend\FrontendController@brandWiseProduct')->name('brand.wise.product');
Route::get('/product-details/{slug}', 'Frontend\FrontendController@productDetails')->name('products.details.info');
Route::post('/find-product', 'Frontend\FrontendController@findProduct')->name('find.product');
Route::get('/get-product', 'Frontend\FrontendController@getProduct')->name('get.product');

// Shopping-Cart
Route::post('/add-to-cart', 'Frontend\CartController@addToCart')->name('insert.cart');
Route::get('/show-cart', 'Frontend\CartController@showCart')->name('show.cart');
Route::post('/update-cart', 'Frontend\CartController@updateCart')->name('update.cart');
Route::get('/delete-cart/{rowId}', 'Frontend\CartController@deleteCart')->name('delete.cart');

// Customer Login
Route::get('/coustomer-login', 'Frontend\CheckoutController@customerLogin')->name('coustomer.login');
Route::get('/coustomer-signup', 'Frontend\CheckoutController@customerSignup')->name('coustomer.signup');
Route::post('/signup-store', 'Frontend\CheckoutController@signupStore')->name('signup.store');
Route::get('/email-verify', 'Frontend\CheckoutController@emailVerify')->name('email.verify');
Route::post('/verify-store', 'Frontend\CheckoutController@verifyStore')->name('verify.store');
Route::get('/checkout', 'Frontend\CheckoutController@cechkOut')->name('customer.checkout');
Route::post('/checkout/store', 'Frontend\CheckoutController@cechkoutStore')->name('customer.checkout.store');


// Customer Dashboard
Route::group(['middleware' => ['auth', 'customer']], function() {
    Route::get('/dashboard', 'Frontend\DashboardController@dashboard')->name('dashboard');
    Route::get('/customer-edit-profile', 'Frontend\DashboardController@editProfile')->name('customer.edit.profile');
    Route::post('/customer-update-profile', 'Frontend\DashboardController@updateProfile')->name('customer.update.profile');
    Route::get('/customer-password-change', 'Frontend\DashboardController@passwordChange')->name('customer.password.change');
    Route::post('/customer-password-update', 'Frontend\DashboardController@passwordUpdate')->name('customer.password.update');

    Route::get('/payment', 'Frontend\DashboardController@payment')->name('customer.payment');
    Route::post('/payment/store', 'Frontend\DashboardController@paymentStore')->name('customer.payment.store');
    Route::get('/order-list', 'Frontend\DashboardController@orderList')->name('customer.order.list');
    Route::get('/order-details/{id}', 'Frontend\DashboardController@orderDetails')->name('customer.order.details');
    Route::get('/order-print/{id}', 'Frontend\DashboardController@orderPrint')->name('customer.order.print');
});


Route::group(['middleware' => ['auth', 'admin']], function () {
    // Admin Dashboard
    Route::get('/home', 'Backend\BackendController@index')->name('home');

    Route::prefix('users')->group(function () {
        Route::get('/view', 'Backend\UserController@view')->name('users.view');
        Route::get('/add', 'Backend\UserController@add')->name('users.add');
        Route::post('/store', 'Backend\UserController@store')->name('users.store');
        Route::get('/edit/{id}', 'Backend\UserController@edit')->name('users.edit');
        Route::post('/update/{id}', 'Backend\UserController@update')->name('users.update');
        Route::post('/delete', 'Backend\UserController@delete')->name('users.delete');
    });


    Route::prefix('profiles')->group(function () {
        Route::get('/view', 'Backend\ProfileController@view')->name('profiles.view');
        Route::get('/edit', 'Backend\ProfileController@edit')->name('profiles.edit');
        Route::post('/update', 'Backend\ProfileController@update')->name('profiles.update');
        Route::get('/password/view', 'Backend\ProfileController@passwordView')->name('profiles.password.view');
        Route::post('/password/update', 'Backend\ProfileController@passwordUpdate')->name('profiles.password.update');
    });

    Route::prefix('logos')->group(function () {
        Route::get('/view', 'Backend\LogoController@view')->name('logos.view');
        Route::get('/add', 'Backend\LogoController@add')->name('logos.add');
        Route::post('/store', 'Backend\LogoController@store')->name('logos.store');
        Route::get('/edit/{id}', 'Backend\LogoController@edit')->name('logos.edit');
        Route::post('/update/{id}', 'Backend\LogoController@update')->name('logos.update');
        Route::post('/delete', 'Backend\LogoController@delete')->name('logos.delete');
    });

    Route::prefix('sliders')->group(function () {
        Route::get('/view', 'Backend\SliderController@view')->name('sliders.view');
        Route::get('/add', 'Backend\SliderController@add')->name('sliders.add');
        Route::post('/store', 'Backend\SliderController@store')->name('sliders.store');
        Route::get('/edit/{id}', 'Backend\SliderController@edit')->name('sliders.edit');
        Route::post('/update/{id}', 'Backend\SliderController@update')->name('sliders.update');
        Route::post('/delete', 'Backend\SliderController@delete')->name('sliders.delete');
    });

    Route::prefix('contacts')->group(function () {
        Route::get('/view', 'Backend\ContactController@view')->name('contacts.view');
        Route::get('/add', 'Backend\ContactController@add')->name('contacts.add');
        Route::post('/store', 'Backend\ContactController@store')->name('contacts.store');
        Route::get('/edit/{id}', 'Backend\ContactController@edit')->name('contacts.edit');
        Route::post('/update/{id}', 'Backend\ContactController@update')->name('contacts.update');
        Route::post('/delete', 'Backend\ContactController@delete')->name('contacts.delete');

        Route::get('/communicate', 'Backend\ContactController@viewCommunicate')->name('contacts.communicate');
        Route::post('/communicate/delete', 'Backend\ContactController@deleteCommunicate')->name('contacts.communicate.delete');
    });

    Route::prefix('abouts')->group(function () {
        Route::get('/view', 'Backend\AboutController@view')->name('abouts.view');
        Route::get('/add', 'Backend\AboutController@add')->name('abouts.add');
        Route::post('/store', 'Backend\AboutController@store')->name('abouts.store');
        Route::get('/edit/{id}', 'Backend\AboutController@edit')->name('abouts.edit');
        Route::post('/update/{id}', 'Backend\AboutController@update')->name('abouts.update');
        Route::post('/delete', 'Backend\AboutController@delete')->name('abouts.delete');
    });

    Route::prefix('categories')->group(function () {
        Route::get('/view', 'Backend\CategoryController@view')->name('categories.view');
        Route::get('/add', 'Backend\CategoryController@add')->name('categories.add');
        Route::post('/store', 'Backend\CategoryController@store')->name('categories.store');
        Route::get('/edit/{id}', 'Backend\CategoryController@edit')->name('categories.edit');
        Route::post('/update/{id}', 'Backend\CategoryController@update')->name('categories.update');
        Route::post('/delete', 'Backend\CategoryController@delete')->name('categories.delete');
    });

    Route::prefix('brands')->group(function () {
        Route::get('/view', 'Backend\BrandController@view')->name('brands.view');
        Route::get('/add', 'Backend\BrandController@add')->name('brands.add');
        Route::post('/store', 'Backend\BrandController@store')->name('brands.store');
        Route::get('/edit/{id}', 'Backend\BrandController@edit')->name('brands.edit');
        Route::post('/update/{id}', 'Backend\BrandController@update')->name('brands.update');
        Route::post('/delete', 'Backend\BrandController@delete')->name('brands.delete');
    });

    Route::prefix('colors')->group(function () {
        Route::get('/view', 'Backend\ColorController@view')->name('colors.view');
        Route::get('/add', 'Backend\ColorController@add')->name('colors.add');
        Route::post('/store', 'Backend\ColorController@store')->name('colors.store');
        Route::get('/edit/{id}', 'Backend\ColorController@edit')->name('colors.edit');
        Route::post('/update/{id}', 'Backend\ColorController@update')->name('colors.update');
        Route::post('/delete', 'Backend\ColorController@delete')->name('colors.delete');
    });

    Route::prefix('sizes')->group(function () {
        Route::get('/view', 'Backend\SizeController@view')->name('sizes.view');
        Route::get('/add', 'Backend\SizeController@add')->name('sizes.add');
        Route::post('/store', 'Backend\SizeController@store')->name('sizes.store');
        Route::get('/edit/{id}', 'Backend\SizeController@edit')->name('sizes.edit');
        Route::post('/update/{id}', 'Backend\SizeController@update')->name('sizes.update');
        Route::post('/delete', 'Backend\SizeController@delete')->name('sizes.delete');
    });

    Route::prefix('products')->group(function () {
        Route::get('/view', 'Backend\ProductController@view')->name('products.view');
        Route::get('/add', 'Backend\ProductController@add')->name('products.add');
        Route::post('/store', 'Backend\ProductController@store')->name('products.store');
        Route::get('/edit/{id}', 'Backend\ProductController@edit')->name('products.edit');
        Route::post('/update/{id}', 'Backend\ProductController@update')->name('products.update');
        Route::post('/delete', 'Backend\ProductController@delete')->name('products.delete');
        Route::get('/details/{id}', 'Backend\ProductController@details')->name('products.details');
    });

    Route::prefix('customers')->group(function () {
        Route::get('/view', 'Backend\CustomerController@view')->name('customers.view');
        Route::get('/draft/view', 'Backend\CustomerController@draftView')->name('customers.draft.view');
        Route::post('/delete', 'Backend\CustomerController@delete')->name('customers.delete');
    });

    Route::prefix('orders')->group(function () {
        Route::get('/pending/list', 'Backend\OrderController@pendingList')->name('orders.pending.list');
        Route::get('/approved/list', 'Backend\OrderController@approvedList')->name('orders.approved.list');
        Route::get('/details/{id}', 'Backend\OrderController@details')->name('orders.details');
        Route::post('/approved', 'Backend\OrderController@approved')->name('orders.approved');
    });

});
