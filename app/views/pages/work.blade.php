<!-- app/views/works/show.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

<h1>{{ $work->name }}</h1>

	<div class="text-left">
		<h2>{{ $work->title }}</h2>
		<a href=""><img src="/media/images/320/sh_{{$work->reference}}.jpg"></a>
		<p>
			Media: {{ $work->media }}<br>
			Dimensions: {{ $work->dimensions }}<br>
			Work date: {{ $work->work_date }}
		</p>
	</div>

@stop
