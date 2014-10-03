<!-- app/views/works/create.blade.php -->

@extends('layout')

@section('nav')

@include('works.nav')

@stop

@section('content')

<h1>Create a work</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::open(array('url' => 'works')) }}

	<div class="form-group">
		{{ Form::label('title', 'Title') }}
		{{ Form::text('title', Input::old('title'), array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('reference', 'Reference') }}
		{{ Form::text('reference', Input::old('reference'), array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('media', 'Media') }}
		{{ Form::text('media', Input::old('media'), array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('dimensions', 'Dimensions') }}
		{{ Form::text('dimensions', Input::old('dimensions'), array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('work_date', 'Work date') }}
		{{ Form::text('work_date', Input::old('work_date'), array('class' => 'form-control')) }}
	</div>

	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>


@stop
