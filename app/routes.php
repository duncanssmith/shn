<?php

# Home
Route::get('/', ['as' => 'home', 'uses' => 'PagesController@index']);

//Route::get('publicgroup/{id}', ['uses' => 'PagesController@publicworks']);

Route::get('/publicgroups', ['as' => 'public',  'uses' => 'PagesController@publicgroups']);

Route::get('/publicgroup/{id}', ['as' => 'public',  'uses' => 'PagesController@publicgroup']);

Route::get('/publicwork/{id}', ['as' => 'public',  'uses' => 'PagesController@publicwork']);

Route::get('/assigngroupstowork/{id}', ['as' => 'assign',  'uses' => 'GroupController@assignworktogrouporgroups']);

Route::get('/savegroupsforwork', ['as' => 'savegroup',  'uses' => 'GroupController@saveagroupofworks']);

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
