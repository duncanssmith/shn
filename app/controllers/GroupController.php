<?php

class GroupController extends BaseController {

    /**
     * The layout that should be used for responses.
     */
    protected $layout = 'layout.master';

    public function index()
    {
        //if (Auth::check()) {
        if (true) {
            // The user is logged in...

            $groups = Group::all();
            return View::make('groups.index')
                ->with('groups', $groups)
                ->with('title', 'Groups');
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
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
            return View::make('group.view', compact('group'))
                ->with('title', 'Groups');
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
        return View::make('groups.create')
            ->with('title', 'Group create');
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
            Session::flash('message', 'Successfully created group');
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
        // get the group
        $group = Group::find($id);

        // show the view and pass the group to it
        return View::make('groups.show')
            ->with('group', $group)
            ->with('title', 'Group show');
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
            ->with('group', $group)
            ->with('title', 'Group edit');
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
            $group = Group::find($id);
            $group->name       = Input::get('name');
            $group->save();

            // redirect
            Session::flash('message', 'Successfully updated group');
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
        Session::flash('message', 'Successfully deleted the group');
        return Redirect::to('groups');
    }


}
