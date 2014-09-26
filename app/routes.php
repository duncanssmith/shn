<?php

Route::resource('works', 'WorkController');
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
Route::get('/', 'HomeController@getIndex');

Route::get('/login', function()
{
    return View::make('login');
});

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
