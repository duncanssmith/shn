<?php

class GroupController extends BaseController {

    /**
     * The layout that should be used for responses.
     */
    protected $layout = 'layout.master';

    /**
     * @param $id
     * @return mixed
     */
    public function assign_works($id)
    {
        if (Auth::check()) {
            // store
            $work = Work::find($id);

            $links = $work->groups;

            $arr = array();
            foreach ($work->groups as $link){
                $arr[] = $link->pivot->group_id;
            }
            
            $groups = Group::all();

            // show the edit form and pass the group
            return View::make('works.assign')
                ->with('work', $work)
                ->with('links', $links)
                ->with('arr', $arr)
                ->with('groups', $groups)
                ->with('title', 'Assign the work to a group or groups');

            // redirect
            Session::flash('message', 'Successfully assigned work to group(s)');
            return Redirect::to('works');
        } else {
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }

    /**
     * 
     *  
     */
    public function save_assigned_works()
    {
        if (Auth::check()) {

            $work = Work::find($_POST['work_id']);

            // only sync the pivot table data if there is any
            if (isset($_POST['groups_data'])) {
                $work->groups()->sync(array_values($_POST['groups_data']));
            } else {
                $work->groups()->detach();
            }

            Session::flash('message', 'Successfully assigned work to group(s)');
            return Redirect::to('assign_works/'.$work->id);

        } else {

            Session::flash('message', 'Please log in');

            return Redirect::to('/');
        }
    }

    /**
     * @return mixed
     */
    public function index()
    {
        // Check the user is logged in...
        if (Auth::check()) {

            // paginate
            $groups = Group::paginate(9);

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
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        // load the create form (app/views/groups/create.blade.php)
        if (Auth::check()) {
            return View::make('groups.create')
                ->with('title', 'Group create');
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
                $group->name = Input::get('name');
                $group->save();

                // redirect
                Session::flash('message', 'Successfully created group');
                return Redirect::to('groups');
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
            // get the group
            $group = Group::find($id);

            // show the view and pass the group to it
            return View::make('groups.show')
                ->with('group', $group)
                ->with('title', 'Group show');
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
            // get the group
            $group = Group::find($id);

            // show the edit form and pass the group
            return View::make('groups.edit')
                ->with('group', $group)
                ->with('title', 'Group edit');
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
            $group = Group::find($id);
            $group->delete();

            // redirect
            Session::flash('message', 'Successfully deleted the group');
            return Redirect::to('groups');
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }
}
