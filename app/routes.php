<?php

# Home
Route::get('/secure', ['as' => 'home', 'uses' => 'PagesController@index']);

Route::get('/', ['as' => 'public',  'uses' => 'PagesController@home']);

Route::get('/publicgroup/{id}', ['as' => 'public',  'uses' => 'PagesController@publicgroup']);

Route::get('/publicwork/{id}', ['as' => 'public',  'uses' => 'PagesController@publicwork']);

Route::get('/publictexts', ['as' => 'publictexts',  'uses' => 'PagesController@publictexts']);

Route::get('/publictext/{id}', ['as' => 'publictext',  'uses' => 'PagesController@publictext']);

Route::get('/publiccv', ['as' => 'publictext',  'uses' => 'PagesController@publiccv']);

Route::get('/assign_work/{id}', ['as' => 'assign_work',  'uses' => 'GroupController@assign_work']);

Route::post('/save_assigned_work', ['as' => 'save_assigned_work',  'uses' => 'GroupController@save_assigned_work']);

Route::get('/assign_text/{id}', ['as' => 'assign_text',  'uses' => 'GroupController@assign_text']);

Route::post('/save_assigned_text', ['as' => 'save_assigned_text',  'uses' => 'GroupController@save_assigned_text']);

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
