<!-- app/views/groups/index.blade.php -->


@extends('layout')

@section('nav')

@include('groups.nav')

@stop

@section('content')


<h1>All the groups</h1>

<!-- will be used to show any messages -->
@if (Session::has('message'))
	<div class="alert alert-info">{{ Session::get('message') }}</div>
@endif

<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<td>Id</td>
			<td>Name</td>
			<td>Actions</td>
		</tr>
	</thead>
	<tbody>
	@foreach($groups as $key => $group)
		<tr>

            <td>{{ $group->id }}</td>
            <td>{{ $group->name }}</td>

			<!-- we will also add show, edit, and delete buttons -->
			<td>

				<!-- delete the group (uses the destroy method DESTROY /groups/{id} -->
				<!-- we will add this later since its a little more complicated than the other two buttons -->
		{{ Form::open(array('url' => 'groups/' . $group->id, 'class' => 'pull-right')) }}
                    {{ Form::hidden('_method', 'DELETE') }}
                    {{ Form::submit('Delete', array('class' => 'btn btn-danger')) }}
                {{ Form::close() }}
                {{ Form::close() }}
				<!-- show the group (uses the show method found at GET /groups/{id} -->
				<a class="btn btn-small btn-success" href="{{ URL::to('groups/' . $group->id) }}">Show</a>

				<!-- edit this group (uses the edit method found at GET /groups/{id}/edit -->
				<a class="btn btn-small btn-info" href="{{ URL::to('groups/' . $group->id . '/edit') }}">Edit</a>

			</td>
		</tr>
	@endforeach
	</tbody>
</table>

</div>


@stop