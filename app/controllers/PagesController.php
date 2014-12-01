<?php

class PagesController extends \BaseController {

    /**
     * The layout that should be used for responses.
     */
    protected $layout = 'layout.main';

    /**
     * This is the publicly viewable page, a group of works
     * identified by the group id
     *
     * @param $id The id of the group requested
     * @return mixed
     *
     */
    public function home()
    {
        // get the groups
        $groups = Group::all();
        $texts = Text::all();

            $group_list = Group::orderBy('order', 'asc')->get();

        // show the view and pass the group to it
        return View::make('pages.home')
            ->with('groups', $groups)
            ->with('texts', $texts)
            ->with('group_list', $group_list)
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
    public function pagegroup($id)
    {
        // get the groups and the works in them
        $group = Group::with('Works')
            ->with('Texts')
            ->orderBy('order', 'asc')
            ->find($id);

        $works = DB::table('works')
            ->join('group_work', 'works.id', '=', 'group_work.work_id')
            ->join('groups', 'groups.id', '=', 'group_work.group_id')
            ->select('group_work.order', 'works.id', 'works.title', 'works.media', 'works.dimensions', 'works.reference', 'works.work_date', 'works.description', 'works.notes')
            ->where('groups.id', '=', $group->id)
            ->orderBy('group_work.order')
            ->get();

        $texts = DB::table('texts')
            ->join('group_text', 'texts.id', '=', 'group_text.text_id')
            ->join('groups', 'groups.id', '=', 'group_text.group_id')
            ->select('group_text.order', 'texts.id', 'texts.title', 'texts.author', 'texts.year', 'texts.description', 'texts.publication', 'texts.publication_date', 'texts.content')
            ->where('groups.id', '=', $group->id)
            ->orderBy('group_text.order')
            ->get();

        $group_list = Group::orderBy('order', 'asc')->get();        
        $i = 0;
        $columns = 3;

        // show the view and pass the group to it
        return View::make('pages.group')
            ->with('group', $group)
            ->with('works', $works)
            ->with('texts', $texts)
            ->with('group_list', $group_list)
            ->with('i', $i)
            ->with('columns', $columns)
            ->with('title', 'Sharon Hall: '.$group->name);
    }

    /**
     * 
     */
    public function pagework($id)
    {
        $work = Work::find($id);
        $group_list = Group::orderBy('order', 'asc')->get();

        return View::make('pages.work')
            ->with('work', $work)
            ->with('group_list', $group_list)
            ->with('title', $work->title);
    }

    /**
     *
     */
    public function pagetexts()
    {
        // get the groups
        $texts = Text::all();
        $group_list = Group::orderBy('order', 'asc')->get();

        // show the view and pass the group to it
        return View::make('pages.texts')
            ->with('texts', $texts)
            ->with('group_list', $group_list)
            ->with('title', 'Sharon Hall Texts');
    }

    /**
     *
     */
    public function pagetext($id)
    {
        $text = Text::find($id);
        $group_list = Group::orderBy('order', 'asc')->get();

        return View::make('pages.text')
        ->with('text', $text)
        ->with('group_list', $group_list)
        ->with('title', $text->title);
    }

    public function pagecv()
    {
        $group_list = Group::orderBy('order', 'asc')->get();

        return View::make('pages.cv')
        ->with('group_list', $group_list)
        ->with('title', 'CV');
    }

    /**
     * Display a listing of the resource.
     * GET /pages
     *
     * @return Response
     */
    public function index()
    {
        $group_list = Group::orderBy('order', 'asc')->get();
        
        return View::make('pages.index')
        ->with('group_list', $group_list)
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
