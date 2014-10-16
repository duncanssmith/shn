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

		// show the view and pass the group to it
		return View::make('pages.groups')
			->with('groups', $groups)
			->with('title', 'Works in group');
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
		$group = Group::with('Works')->find($id);

		// show the view and pass the group to it
		return View::make('pages.group')
			->with('group', $group)
			->with('title', 'Works in group');
	}


	/**
	 * Display a listing of the resource.
	 * GET /pages
	 *
	 * @return Response
	 */
	public function index()
	{
		return View::make('pages.index');
	}

	/**
	 * Show the form for creating a new resource.
	 * GET /pages/create
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 * POST /pages
	 *
	 * @return Response
	 */
	public function store()
	{
		//
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

	/**
	 * Show the form for editing the specified resource.
	 * GET /pages/{id}/edit
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 * PUT /pages/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 * DELETE /pages/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}