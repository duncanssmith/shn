<?php

// routes
Route::get('/', 'HomeController@getIndex');

Route::get('/login', function()
{
    return View::make('login')->with('title', 'Login');
});

//Route::get('profile', array('before' => 'auth.basic', function()
//{
//    // Only authenticated users may enter...
//}));
//
//Route::filter('auth.basic', function()
//{
//    return Auth::basic('username');
//});


// CRUD Routes

Route::resource('works', 'WorkController');

Route::resource('groups', 'GroupController');

Route::resource('users', 'UserController');



//Route::get('/users', function()
//{
//    $users = User::all();
//
//    return View::make('users')->with('users', $users);
//});

//Route::get('/works', function()
//{
//    $works = Work::all();
//
//    return View::make('works')->with('works', $works);
//});
//
//Route::get('/groups', function()
//{
//    $groups = Group::all();
//
//    return View::make('groups')->with('groups', $groups);
//});
//

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
