<?php

Route::get('login', 'SessionsController@create');

Route::get('logout', 'SessionsController@destroy');

Route::get('/', ['as' => 'home', 'uses' => 'PagesController@index']);

Route::resource('sessions', 'SessionsController');

Route::get('/register', 'RegistrationController@create');

Route::resource('registration', 'RegistrationController');

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
