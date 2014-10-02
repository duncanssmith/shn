<!-- app/views/works/edit.blade.php -->

@extends('layout')

@section('content')

<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('works') }}">View All works</a></li>
		<li><a href="{{ URL::to('works/create') }}">Create a work</a>
	</ul>
</nav>

<h1>Edit {{ $work->title }}</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::model($work, array('route' => array('works.update', $work->id), 'method' => 'PUT')) }}

    <img src="/media/images/64/sh_{{$work->reference}}.jpg">

	<div class="form-group">
		{{ Form::label('title', 'Title') }}
		{{ Form::text('title', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('reference', 'Reference') }}
		{{ Form::text('reference', null, array('class' => 'form-control')) }}
	</div>
	<div class="form-group">
		{{ Form::label('media', 'Media') }}
		{{ Form::text('media', null, array('class' => 'form-control')) }}
	</div>
	<div class="form-group">
		{{ Form::label('dimensions', 'Dimensions') }}
		{{ Form::text('dimensions', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('work_date', 'Work date') }}
		{{ Form::text('work_date', null, array('class' => 'form-control')) }}
	</div>

	{{ Form::submit('Edit the work!', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop
