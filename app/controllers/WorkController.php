<?php
//use Work\Repositories\Work\WorkRepository;

class WorkController extends BaseController {

    /*
    |--------------------------------------------------------------------------
    | Work Controller
    |--------------------------------------------------------------------------
    |
    | You may wish to use controllers instead of, or in addition to, Closure
    | based routes. That's great! Here is an example controller method to
    | get you started. To route to this controller, just add the route:
    |
    | Route::get('/', 'UserController@showWelcome');
    |
    */

    /**
     * The Work Repository
     *
     * @var Work\Repositories\Work\WorkRepository
     */
    //protected $workRepository;

    /**
     * Inject the WorkRepository
     *
     * @param Work\Repositories\Work\WorkRepository $WorkRepository
     * @return void
     */
//    public function __construct(WorkRepository $workRepository)
//    {
//        $this->workRepository = $workRepository;
//    }

//    public function getIndex()
//    {
//        return View::make('works');
//    }

    public function index()
    {
        $works = Work::all();
        return View::make('works.index')
            ->with('works', $works);
    }

    /**
     * Display a single work by id
     *
     * @param int $id
     * @return View
     */
    public function view($id)
    {
        $work = $this->workRepository->find($id);

        if($work)
        {
            return View::make('work.view', compact('work'));
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
        // load the create form (app/views/works/create.blade.php)
        return View::make('works.create');
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
            $work->title       = Input::get('title');
            $work->reference      = Input::get('reference');
            $work->media = Input::get('media');
            $work->dimensions = Input::get('dimensions');
            $work->work_date = Input::get('work_date');
            $work->save();

            // redirect
            Session::flash('message', 'Successfully created work');
            return Redirect::to('works');
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
        $work = Work::find($id);

        // show the view and pass the nerd to it
        return View::make('works.show')
            ->with('work', $work);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        // get the work
        $work = Work::find($id);

        // show the edit form and pass the work
        return View::make('works.edit')
            ->with('work', $work);
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
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        $work = Work::find($id);
        $work->delete();

        // redirect
        Session::flash('message', 'Successfully deleted the work');
        return Redirect::to('works');
    }


}