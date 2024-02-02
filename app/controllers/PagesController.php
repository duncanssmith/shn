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
     * @return mixed
     *
     */
    public function home()
    {
        // get the groups
        $groups = Group::all();
        $texts = Text::all();
        $body_class = 'top-photo';

        // show the view and pass the group to it
        return View::make('pages.home')
            ->with('groups', $groups)
            ->with('texts', $texts)
            ->with('body_class', $body_class)
            ->with('title', 'Sharon Hall');
    }

    /**
     * This is the publicly viewable page, a group of works
     * identified by the group id
     *
     * @param $id id of the group requested
     * @return mixed
     *
     */
    public function pagegroup($id)
    {
        // get the group and its works and/or texts
        $group = Group::find($id);

	if ($group) {
		if ($group->display || Auth::check()) {

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

		    $columns = (empty($group->columns) || (0 == $group->columns)) ? 1 : $group->columns;

		    $template = 'pages.group';

		    if ($group->layout == 1) {
			$template = 'pages.groupcarousel';
		    }
		} else {
			Session::flash('message', "That page doesn't exist");
			return Redirect::to('/');
		}

            // show the view and pass the group to it
            return View::make($template)
                ->with([
                    'group' => $group,
                    'works' => $works,
                    'texts' => $texts,
                    'columns' => $columns,
                    'title' => 'Sharon Hall: ' . $group->name
                ]);
        } else {
            return Redirect::to('/');
        }
    }

    /**
     *
     */
    public function pagework($id)
    {
        $work = Work::find($id);

        if (!empty($_GET['group'])) {
            $group = Group::find($_GET['group']);

            $view = View::make('pages.work')
                ->with('work', $work)
                ->with('group', $group)
                ->with('title', $work->title);
        } else {

            $view = View::make('pages.work')
                ->with('work', $work)
                ->with('title', $work->title);
        }

        return $view;
    }

    /**
     *
     */
    public function pagetexts()
    {
        // get the groups
        $texts = Text::all();

        // show the view and pass the group to it
        return View::make('pages.texts')
            ->with('texts', $texts)
            ->with('title', 'Sharon Hall Texts');
    }
}
