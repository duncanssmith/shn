<?php

# Home
Route::get('/secure', ['as' => 'home', 'uses' => 'PagesController@index']);

//Route::get('publicgroup/{id}', ['uses' => 'PagesController@publicworks']);

Route::get('/', ['as' => 'public',  'uses' => 'PagesController@home']);

Route::get('/publicgroup/{id}', ['as' => 'public',  'uses' => 'PagesController@publicgroup']);

Route::get('/publicwork/{id}', ['as' => 'public',  'uses' => 'PagesController@publicwork']);

Route::get('/publictexts', ['as' => 'publictexts',  'uses' => 'PagesController@publictexts']);

Route::get('/publictext/{id}', ['as' => 'publictext',  'uses' => 'PagesController@publictext']);

Route::get('/publiccv', ['as' => 'publictext',  'uses' => 'PagesController@publiccv']);

Route::get('/assign_works/{id}', ['as' => 'assign_works',  'uses' => 'GroupController@assign_works']);

Route::post('/save_assigned_works', ['as' => 'save_assigned_works',  'uses' => 'GroupController@save_assigned_works']);

# Registration
Route::get('/register', 'RegistrationController@create')->before('guest');

Route::post('/register', ['as' => 'registration.store', 'uses' => 'RegistrationController@store']);

# Authentication
Route::get('login', ['as' => 'login', 'uses' => 'SessionsController@create']);

Route::get('logout', ['as' => 'logout', 'uses' => 'SessionsController@destroy']);

Route::resource('sessions', 'SessionsController', ['only' => ['create', 'store', 'destroy']]);

Route::controller('password', 'RemindersController');


//Route::get('profile', array('before' => 'auth.basic', function()
//{
//    // Only authenticated users may enter...
//}));
//
//Route::filter('auth.basic', function()
//{
//    return Auth::basic('username');
//});


// CRUD
Route::resource('works', 'WorkController');

Route::resource('groups', 'GroupController');

Route::resource('texts', 'TextController');

Route::resource('users', 'UserController');

// Confide routes
//Route::get('users/create', 'UsersController@create');
//Route::post('users', 'UsersController@store');
//Route::get('users/login', 'UsersController@login');
//Route::post('users/login', 'UsersController@doLogin');
//Route::get('users/confirm/{code}', 'UsersController@confirm');
//Route::get('users/forgot_password', 'UsersController@forgotPassword');
//Route::post('users/forgot_password', 'UsersController@doForgotPassword');
//Route::get('users/reset_password/{token}', 'UsersController@resetPassword');
//Route::post('users/reset_password', 'UsersController@doResetPassword');
//Route::get('users/logout', 'UsersController@logout');
