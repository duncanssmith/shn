<?php

class GroupController extends BaseController {

    /*
    |--------------------------------------------------------------------------
    | Group Controller
    |--------------------------------------------------------------------------
    |
    | You may wish to use controllers instead of, or in addition to, Closure
    | based routes. That's great! Here is an example controller method to
    | get you started. To route to this controller, just add the route:
    |
    | Route::get('/', 'UserController@showWelcome');
    |
    */

    public function getIndex()
    {
        return View::make('groups');
    }

    public function index()
    {
        $groups = Group::all();
        return View::make('groups.index')
            ->with('groups', $groups);
    }

    /**
     * Display a single group by id
     *
     * @param int $id
     * @return View
     */
    public function view($id)
    {
        $group = $this->groupRepository->find($id);

        if($group)
        {
            return View::make('group.view', compact('group'));
        }

        App::abort(404);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        // load the create form (app/views/groups/create.blade.php)
        return View::make('groups.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        // validate
        // read more on validation at http://laravel.com/docs/validation
        $rules = array(
            'name'      => 'required',
        );
        $validator = Validator::make(Input::all(), $rules);

        // process the login
        if ($validator->fails()) {
            return Redirect::to('groups/create')
                ->withErrors($validator)
                ->withInput(Input::except('password'));
        } else {
            // store
            $group = new Group;
            $group->name       = Input::get('name');
            $group->save();

            // redirect
            Session::flash('message', 'Successfully created group!');
            return Redirect::to('groups');
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
        // get the nerd
        $group = Group::find($id);

        // show the view and pass the group to it
        return View::make('groups.show')
            ->with('group', $group);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        // get the group
        $group = Group::find($id);

        // show the edit form and pass the group
        return View::make('groups.edit')
            ->with('group', $group);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id)
    {
        // validate
        // read more on validation at http://laravel.com/docs/validation
        $rules = array(
            'name'       => 'required'
        );
        $validator = Validator::make(Input::all(), $rules);

        // process the login
        if ($validator->fails()) {
            return Redirect::to('groups/' . $id . '/edit')
                ->withErrors($validator)
                ->withInput(Input::except('password'));
        } else {
            // store
            $group = group::find($id);
            $group->name       = Input::get('name');
            $group->save();

            // redirect
            Session::flash('message', 'Successfully updated group!');
            return Redirect::to('groups');
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
        $group = Group::find($id);
        $group->delete();

        // redirect
        Session::flash('message', 'Successfully deleted the group!');
        return Redirect::to('groups');
    }


}
