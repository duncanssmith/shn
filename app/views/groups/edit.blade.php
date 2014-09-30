<!-- app/views/groups/edit.blade.php -->

@extends('layout')

@section('content')

<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<a class="navbar-brand" href="{{ URL::to('groups') }}">group Alert</a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('groups') }}">View All groups</a></li>
		<li><a href="{{ URL::to('groups/create') }}">Create a group</a>
	</ul>
</nav>

<h1>Edit {{ $group->name }}</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::model($group, array('route' => array('groups.update', $group->id), 'method' => 'PUT')) }}

	<div class="form-group">
		{{ Form::label('name', 'Name') }}
		{{ Form::text('name', null, array('class' => 'form-control')) }}
	</div>

	{{ Form::submit('Edit the group!', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>



@stop
