<?php

class UserController extends BaseController {

    /**
     * The layout that should be used for responses.
     */
    protected $layout = 'layout.secure';

    public function index()
    {
        if (Auth::check()) {

            $group_list = Group::orderBy('order', 'asc')->get();
            $users = User::paginate(3);
            
            return View::make('users.index')
                ->with('users', $users)
                ->with('group_list', $group_list)
                ->with('title', 'Users');
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
            $group_list = Group::orderBy('order', 'asc')->get();

            // show the view and pass the user to it
            return View::make('users.show')
                ->with('user', $user)
                ->with('group_list', $group_list)
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
            $group_list = Group::orderBy('order', 'asc')->get();

            // show the edit form and pass the user
            return View::make('users.edit')
                ->with('user', $user)
                ->with('group_list', $group_list)
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
