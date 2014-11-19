<?php

class GroupController extends BaseController {

    /**
     * The layout that should be used for responses.
     */
    protected $layout = 'layout.secure';

    /**
     * @param $id
     * @return mixed
     */
    public function assign_text($id)
    {
        if (Auth::check()) {
            // store
            $text = Text::find($id);

            $links = $text->groups;

            $group_list = Group::orderBy('order', 'asc')->get();

            $arr = array();
            foreach ($text->groups as $link){
                $arr[] = $link->pivot->group_id;
            }
            
            $groups = Group::all();

            // show the edit form and pass the group
            return View::make('texts.assign')
                ->with('group_list', $group_list)               
                ->with('text', $text)
                ->with('links', $links)
                ->with('arr', $arr)
                ->with('entity', 'text')
                ->with('groups', $groups)
                ->with('title', 'Assign the text to a group or groups');

            // redirect
            Session::flash('message', 'Successfully assigned text to group(s)');
            return Redirect::to('texts');
        } else {
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }

    /**
     * 
     *  
     */
    public function save_assigned_text()
    {
        if (Auth::check()) {

            $text = Text::find($_POST['text_id']);

            // only sync the pivot table data if there is any
            if (isset($_POST['groups_data'])) {
                $text->groups()->sync(array_values($_POST['groups_data']));
            } else {
                $text->groups()->detach();
            }

            Session::flash('message', 'Successfully assigned text to group(s)');
            return Redirect::to('texts');

        } else {

            Session::flash('message', 'Please log in');

            return Redirect::to('/');
        }
    }

    /**
     * @param $id
     * @return mixed
     */
    public function assign_work($id)
    {
        if (Auth::check()) {
            // store
            $work = Work::find($id);

            $links = $work->groups;

            $group_list = Group::orderBy('order', 'asc')->get();

            $arr = array();
            foreach ($work->groups as $link){
                $arr[] = $link->pivot->group_id;
            }
            
            $groups = Group::all();

            $group_list = Group::orderBy('order', 'asc')->get();

            // show the edit form and pass the group
            return View::make('works.assign')
                ->with('group_list', $group_list)               
                ->with('work', $work)
                ->with('entity', 'work')
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
    public function save_assigned_work()
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
            return Redirect::to('works');

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
            $groups = Group::orderBy('id', 'asc')->paginate(9);
            $group_list = Group::orderBy('order', 'asc')->get();

            return View::make('groups.index')
                ->with('groups', $groups)
                ->with('group_list', $group_list)
                ->with('entity', 'page')
                ->with('title', 'Pages');

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

            $group_list = Group::orderBy('order', 'asc')->get();

            return View::make('groups.create')
                ->with('group_list', $group_list)
                ->with('entity', 'page')
                ->with('title', 'Page create');
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
                return Redirect::to('pages/create')
                    ->withErrors($validator)
                    ->withInput(Input::except('password'));
            } else {
                // store
                $group = new Group;
                $group->name = Input::get('name');
                $group->order = Input::get('order');
                $group->save();

                // redirect
                Session::flash('message', 'Successfully created page');
                return Redirect::to('pages');
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

            $group_list = Group::orderBy('order', 'asc')->get();

            // show the view and pass the group to it
            return View::make('groups.show')
                ->with('group_list', $group_list)
                ->with('group', $group)
                ->with('entity', 'page')
                ->with('title', 'Page show');
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

            $group_list = Group::orderBy('order', 'asc')->get();

            // show the edit form and pass the group
            return View::make('groups.edit')
                ->with('group_list', $group_list)
                ->with('group', $group)
                ->with('entity', 'page')
                ->with('title', 'Page edit');
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
                return Redirect::to('pages/' . $id . '/edit')
                    ->withErrors($validator)
                    ->withInput(Input::except('password'));
            } else {
                // store
                $group = Group::find($id);
                $group->name       = Input::get('name');
                $group->order       = Input::get('order');
                $group->save();

                // redirect
                Session::flash('message', 'Successfully updated page');
                return Redirect::to('pages');
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
            Session::flash('message', 'Successfully deleted the page');
            return Redirect::to('pages');
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }
}
