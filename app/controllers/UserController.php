<?php

class UserController extends BaseController {

    /**
     * The layout that should be used for responses.
     */
    protected $layout = 'layout.master';

    public function index()
    {
        if (Auth::check()) {
            $users = User::all();
            return View::make('users.index')
                ->with('users', $users)
                ->with('title', 'Users')
                ->with('count', count($users));
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        if (Auth::check()) {
            // load the create form (app/views/users/create.blade.php)
            return View::make('users.create')
                    ->with('title', 'Users create');
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        if (Auth::check()) {
            // validate
            // read more on validation at http://laravel.com/docs/validation
            $rules = array(
                'username'      => 'required',
                'email'     => 'required',
                'password'     => 'required',
                'confirmation_code'     => 'required',
                'remember_token'     => 'required',
                'confirmed' => 'required',
            );
            $validator = Validator::make(Input::all(), $rules);

            // process the login
            if ($validator->fails()) {
                return Redirect::to('users/create')
                    ->withErrors($validator)
                    ->withInput(Input::except('password'));
            } else {
                // store
                $user = new User;
                $user->username = Input::get('username');
                $user->email = Input::get('email');
                $user->password = Input::get('password');
                $user->confirmation_code = Input::get('confirmation_code');
                $user->remember_token = Input::get('remember_token');
                $user->confirmed = Input::get('confirmed');
                $user->save();

                // redirect
                Session::flash('message', 'Successfully created user');
                return Redirect::to('users');
            }
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        if (Auth::check()) {
            // get the user
            $user = User::find($id);

            // show the view and pass the user to it
            return View::make('users.show')
                ->with('user', $user)
                ->with('title', 'User show');
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        if (Auth::check()) {
            // get the user
            $user = User::find($id);

            // show the edit form and pass the user
            return View::make('users.edit')
                ->with('user', $user)
                ->with('title', 'User edit');
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id)
    {
        if (Auth::check()) {
            // validate
            // read more on validation at http://laravel.com/docs/validation
            $rules = array(
                'name'       => 'required',
                'email'      => 'required',
            );
            $validator = Validator::make(Input::all(), $rules);

            // process the login
            if ($validator->fails()) {
                return Redirect::to('users/' . $id . '/edit')
                    ->withErrors($validator)
                    ->withInput(Input::except('password'));
            } else {
                // store
                $user = User::find($id);
                $user->name       = Input::get('name');
                $user->email      = Input::get('email');
                $user->save();

                // redirect
                Session::flash('message', 'Successfully updated user');
                return Redirect::to('users');
            }
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        if (Auth::check()) {
            $user = User::find($id);
            $user->delete();

            // redirect
            Session::flash('message', 'Successfully deleted the user');
            return Redirect::to('users');
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }
}
