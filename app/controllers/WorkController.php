<?php
use Work\Repositories\Work\WorkRepository;

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
    protected $workRepository;

    /**
     * Inject the WorkRepository
     *
     * @param Work\Repositories\Work\WorkRepository $WorkRepository
     * @return void
     */
    public function __construct(WorkRepository $workRepository)
    {
        $this->workRepository = $workRepository;
    }

    public function getIndex()
    {
        return View::make('works');
    }

    public function index()
    {
        $works = null;
        return View::make('works');
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

}