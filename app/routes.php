<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/
Route::get('/', 'UserController@getIndex'); 

Route::get('/laravel', function()
{
	return View::make('hello');
});

Route::get('/users', function()
{
    $users = app\models\User::all();

    //die("DUNCAN DEBUG 100");

    return View::make('users')->with('users', $users);
});
