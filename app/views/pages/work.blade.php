<!-- app/views/works/show.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

<h1>{{ $work->name }}</h1>

	<div class="text-left">
		<h2>{{ $work->title }}</h2>
		<a href=""><img src="/media/images/640/sh_{{$work->reference}}.jpg"></a>
		<p>
			{{ $work->media }}<br>
			{{ $work->dimensions }}<br>
			{{ $work->work_date }}
		</p>
	</div>

@stop
