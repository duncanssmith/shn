<!-- app/views/groups/edit.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav_secure')

    @include('partials.subnav_secure')

@stop

@section('content')

<h1>Edit {{ $group->name }}</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::model($group, array('route' => array('groups.update', $group->id), 'method' => 'PUT')) }}

	<div class="form-group">
		{{ Form::label('name', 'Name') }}
		{{ Form::text('name', null, array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('order', 'Order') }}
		{{ Form::text('order', null, array('class' => 'form-control')) }}
	</div>	

	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>



@stop
