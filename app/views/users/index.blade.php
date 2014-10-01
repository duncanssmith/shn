<!-- app/views/users/index.blade.php -->

@extends('layout')

@section('content')

<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<a class="navbar-brand" href="{{ URL::to('users') }}">user Alert</a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('users') }}">View All users</a></li>
		<li><a href="{{ URL::to('users/create') }}">Create a user</a>
	</ul>
</nav>

<h1>All the users</h1>

<!-- will be used to show any messages -->
@if (Session::has('message'))
	<div class="alert alert-info">{{ Session::get('message') }}</div>
@endif

<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<td>Id</td>
			<td>Name</td>
			<td>Email</td>
			<td>Actions</td>
		</tr>
	</thead>
	<tbody>
	@foreach($users as $key => $user)
		<tr>

        <td>{{ $user->id }}</td>
        <td>{{ $user->name }}</td>
        <td>{{ $user->email }}</td>

			<!-- we will also add show, edit, and delete buttons -->
			<td>

				<!-- delete the user (uses the destroy method DESTROY /users/{id} -->
				<!-- we will add this later since its a little more complicated than the other two buttons -->
		{{ Form::open(array('url' => 'users/' . $user->id, 'class' => 'pull-right')) }}
                    {{ Form::hidden('_method', 'DELETE') }}
                    {{ Form::submit('Delete', array('class' => 'btn btn-danger')) }}
                {{ Form::close() }}
                {{ Form::close() }}
				<!-- show the user (uses the show method found at GET /users/{id} -->
				<a class="btn btn-small btn-success" href="{{ URL::to('users/' . $user->id) }}">Show</a>

				<!-- edit this user (uses the edit method found at GET /users/{id}/edit -->
				<a class="btn btn-small btn-info" href="{{ URL::to('users/' . $user->id . '/edit') }}">Edit</a>

			</td>
		</tr>
	@endforeach
	</tbody>
</table>

</div>


@stop