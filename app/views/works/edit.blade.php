<!-- app/views/works/edit.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')

<h1>Edit {{ $work->title }}</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::model($work, array('route' => array('works.update', $work->id), 'method' => 'PUT')) }}

    <img src="/media/images/160/sh_{{$work->reference}}.jpg">

	<div class="form-group">
		{{ Form::label('image', 'Image') }}
		{{ Form::file('image', Input::old('image'), array('class' => ' btn btn-primary')) }}
	</div>

	<div class="form-group">
		{{ Form::label('title', 'Title') }}
		{{ Form::text('title', null, array('class' => 'form-control')) }}
	</div>

<!-- 	<div class="form-group">
		{{ Form::label('reference', 'Reference') }}
		{{ Form::text('reference', null, array('class' => 'form-control')) }}
	</div> -->
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

	<div class="form-group">
		{{ Form::label('description', 'Description') }}
		{{ Form::text('description', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('notes', 'Notes') }}
		{{ Form::text('notes', null, array('class' => 'form-control')) }}
	</div>

	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop
