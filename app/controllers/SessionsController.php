<?php use Acme\Forms\Login;

class SessionsController extends \BaseController {

    protected $loginForm;

    function __construct(Login $loginForm)
    {
        $this->loginForm = $loginForm;
    }

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('sessions.create')
            ->with('title', 'Log in');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
        $this->loginForm->validate($input = Input::only ('username', 'password'));

        if (Auth::attempt($input))
        {
            return Redirect::intended('/');
        }

        return Redirect::back('login')->withInput()->withFlashMessage('Invalid credentials provided');
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id = null)
	{
		Auth::logout();

        return Redirect::home();
	}


}
