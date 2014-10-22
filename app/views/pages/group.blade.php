<!-- app/views/pages/group.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

	<div class="text-left">
		<h2>{{ $group->name }}</h2>
	</div>

	<div>

	    @foreach($group->works as $work)
    		<p>
    	    	<a href="/publicwork/{{$work->id}}"><img src="/media/images/64/sh_{{ $work->reference }}.jpg"></a>
                {{ $work->title }},
                {{ $work->media }},
                {{ $work->dimensions }},
                {{ $work->work_date }}
            </p>
        @endforeach

	</div>

@stop