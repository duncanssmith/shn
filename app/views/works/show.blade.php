<!-- app/views/works/show.blade.php -->

@extends('...layout.secure')

@section('nav')

    @include('partials.nav_secure')

    @include('partials.subnav_secure')

@stop

@section('content')

<h1>{{ $work->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $work->title }}</h2>
		<img src="/media/images/320/sh_{{$work->reference}}.jpg">
		<p>
			<strong>Reference:</strong> {{ $work->reference }}<br>
			<strong>Media:</strong> {{ $work->media }}<br>
			<strong>Dimensions:</strong> {{ $work->dimensions }}<br>
			<strong>Work date:</strong> {{ $work->work_date }}<br>
			<strong>Description:</strong> {{ $work->description }}<br>
			<strong>Notes:</strong> {{ $work->notes }}
		</p>
	</div>

@stop
