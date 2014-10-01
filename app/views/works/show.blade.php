<!-- app/views/works/show.blade.php -->

@extends('layout')

@section('content')

<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('works') }}">View All works</a></li>
		<li><a href="{{ URL::to('works/create') }}">Create a work</a>
	</ul>
</nav>

<h1>Showing {{ $work->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $work->title }}</h2>
		<img src="/media/images/64/sh_{{$work->reference}}.jpg">
		<p>
			<strong>Reference:</strong> {{ $work->reference }}<br>
			<strong>Media:</strong> {{ $work->media }}<br>
			<strong>Dimensions:</strong> {{ $work->dimensions }}<br>
			<strong>Work date:</strong> {{ $work->work_date }}
		</p>
	</div>

</div>

@stop