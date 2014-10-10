<?php
//use Work\Repositories\Work\WorkRepository;

class WorkController extends BaseController {

    /**
     * The layout that should be used for responses.
     */
    protected $layout = 'layout.master';

    /**
     * List all the works
     *
     * @return mixed
     */
    public function index()
    {
        if (Auth::check()) {
            $works = Work::all();

            return View::make('works.index')
                ->with('works', $works)
                ->with('title', 'Works')
                ->with('count', count($works));
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
            // load the create form (app/views/works/create.blade.php)
            return View::make('works.create')
                ->with('title', 'Work create');
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
                'title'      => 'required',
                'reference'  => 'required',
                'media'      => 'required',
                'dimensions' => 'required',
            );
            $validator = Validator::make(Input::all(), $rules);

            // process the login
            if ($validator->fails()) {
                return Redirect::to('works/create')
                    ->withErrors($validator)
                    ->withInput(Input::except('password'));
        } else {
            // store
            $work = new Work;
            $work->title = Input::get('title');
            $work->reference = Input::get('reference');
            $work->media = Input::get('media');
            $work->dimensions = Input::get('dimensions');
            $work->work_date = Input::get('work_date');
            $work->save();

            // redirect
            Session::flash('message', 'Successfully created work');
            return Redirect::to('works');
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
            // get the work
            $work = Work::find($id);

            // show the view and pass the nerd to it
            return View::make('works.show')
                ->with('work', $work)
                ->with('title', 'Work show');
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
            // get the work
            $work = Work::find($id);

            // show the edit form and pass the work
            return View::make('works.edit')
                ->with('work', $work)
                ->with('title', 'Work edit');
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
                'title'       => 'required',
                'reference'      => 'required',
                'media'       => 'required',
                'dimensions'      => 'required',
                'work_date' => 'required'
            );
            $validator = Validator::make(Input::all(), $rules);

            // process the login
            if ($validator->fails()) {
                return Redirect::to('works/' . $id . '/edit')
                    ->withErrors($validator)
                    ->withInput(Input::except('password'));
            } else {
                // store
                $work = Work::find($id);
                $work->title       = Input::get('title');
                $work->reference       = Input::get('reference');
                $work->media      = Input::get('media');
                $work->work_date = Input::get('work_date');
                $work->save();

                // redirect
                Session::flash('message', 'Successfully updated work');
                return Redirect::to('works');
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
            $work = Work::find($id);
            $work->delete();

            // redirect
            Session::flash('message', 'Successfully deleted the work');
            return Redirect::to('works');
        } else {
            // User is not logged in
            Session::flash('message', 'Please log in');
            return Redirect::to('/');
        }
    }


}
