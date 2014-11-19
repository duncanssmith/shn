<?php

# Home
Route::get('/secure', ['as' => 'home', 'uses' => 'PagesController@index']);

Route::get('/', ['as' => 'public',  'uses' => 'PagesController@home']);

Route::get('/page/{id}', ['as' => 'public',  'uses' => 'PagesController@pagegroup']);

Route::get('/pagework/{id}', ['as' => 'public',  'uses' => 'PagesController@pagework']);

Route::get('/pagetexts', ['as' => 'pagetexts',  'uses' => 'PagesController@pagetexts']);

Route::get('/pagetext/{id}', ['as' => 'pagetext',  'uses' => 'PagesController@pagetext']);

Route::get('/pagecv', ['as' => 'pagetext',  'uses' => 'PagesController@pagecv']);

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

Route::resource('pages', 'GroupController');

Route::resource('texts', 'TextController');

Route::resource('users', 'UserController');
