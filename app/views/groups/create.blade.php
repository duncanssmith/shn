<!-- app/views/groups/create.blade.php -->

@extends('...layout.master')

@section('nav')

    <nav class="navbar navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="{{ URL::to('groups') }}">List groups</a></li>
            <li><a href="{{ URL::to('groups/create') }}">Add group</a>
        </ul>
    </nav>

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

	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop