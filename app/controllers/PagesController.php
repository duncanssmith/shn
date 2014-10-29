<?php

class PagesController extends \BaseController {

	/**
	 * This is the publicly viewable page, a group of works
	 * identified by the group id
	 *
	 * @param $id The id of the group requested
	 * @return mixed
	 *
	 */
	public function publicgroups()
	{
		// get the groups
		$groups = Group::all();
		$texts = Text::all();

		// show the view and pass the group to it
		return View::make('pages.groups')
			->with('groups', $groups)
			->with('texts', $texts)
			->with('title', 'Sharon Hall');
	}

	/**
	 * This is the publicly viewable page, a group of works
	 * identified by the group id
	 *
	 * @param $id The id of the group requested
	 * @return mixed
	 *
	 */
	public function publicgroup($id)
	{
		// get the groups and the works in them
		$group = Group::with('Works')->with('Texts')->find($id);

        $texts = Text::all();
        $groups = Group::all();		

		// show the view and pass the group to it
		return View::make('pages.group')
			->with('group', $group)
			->with('groups', $groups)
			->with('texts', $texts)
			->with('title', 'Sharon Hall: '.$group->name);
	}

    /**
     * 
     */
    public function publicwork($id)
    {
    	$work = Work::find($id);

    	return View::make('pages.work')
    	    ->with('work', $work)
    	    ->with('title', $work->title);
    }


	public function publictexts()
	{
		// get the groups
        $texts = Text::all();

        // show the view and pass the group to it
        return View::make('pages.texts')
        ->with('texts', $texts)
        ->with('title', 'Sharon Hall Texts');
	}

    /**
     *
     */
    public function publictext($id)
    {
        $text = Text::find($id);

        return View::make('pages.text')
        ->with('text', $text)
        ->with('title', $text->title);
    }

	/**
	 * Display a listing of the resource.
	 * GET /pages
	 *
	 * @return Response
	 */
	public function index()
	{
		return View::make('pages.index')
		->with('title', 'SHN');
	}

	/**
	 * Display the specified resource.
	 * GET /pages/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}
}