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
        $body_class = 'top-photo';

            $group_list = Group::orderBy('order', 'asc')->get();

        // show the view and pass the group to it
        return View::make('pages.home')
            ->with('groups', $groups)
            ->with('texts', $texts)
            ->with('group_list', $group_list)
            ->with('body_class', $body_class)
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
        // get the groups and the works and texts in them
        $group = Group::orderBy('order', 'asc')
            ->find($id);
            // now that we are ordering the works and texts by the
            // order fields in the pivot tables, we no longer need
            // to get the works and texts with the groups.
            //->with('Works')
            //->with('Texts')

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
        $columns = 1;

        // show the view and pass the group to it
        return View::make('pages.group')
            ->with([
                'group' => $group,
                'works' => $works,
                'texts' => $texts,
                'group_list' => $group_list,
                'i' => $i,
                'columns' => $columns,
                'title' => 'Sharon Hall: '.$group->name
                ]);
    }

    /**
     *
     */
    public function pagework($id)
    {
        $work = Work::find($id);
        $group_list = Group::orderBy('order', 'asc')->get();

        $group = Group::find($_GET['group']);

        return View::make('pages.work')
            ->with('work', $work)
            ->with('group_list', $group_list)
            ->with('group', $group)
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

}
