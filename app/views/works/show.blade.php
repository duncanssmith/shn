<!-- app/views/works/show.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')

	<div class="text-left">
		<h2><strong>Title:</strong> {{ $work->title }}</h2>
		<strong>Image: </strong>
		<img src="/media/images/320/sh_{{$work->reference}}.jpg">
		<p>
			<strong>Reference:</strong> {{ $work->reference }}<br>
			<strong>Media:</strong> {{ $work->media }}<br>
			<strong>Dimensions:</strong> {{ $work->dimensions }}<br>
			<strong>Work date:</strong> {{ $work->work_date }}<br>
			<strong>Description:</strong> {{ $work->description }}<br>
			<strong>Notes:</strong> {{ $work->notes }}</p>
		</p>
	</div>

@stop
