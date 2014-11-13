<!-- app/views/groups/create.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav_secure')

    @include('partials.subnav_secure')

@stop

@section('content')

<h1>Add group</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::open(array('url' => 'groups')) }}

	<div class="form-group">
		{{ Form::label('name', 'Name') }}
		{{ Form::text('name', Input::old('name'), array('class' => 'form-control')) }}
	</div>

    <div class="form-group">
		{{ Form::label('order', 'Order') }}
		{{ Form::text('order', Input::old('order'), array('class' => 'form-control')) }}
	</div>


	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop