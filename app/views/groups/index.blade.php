<!-- app/views/groups/index.blade.php -->

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

<h1>All the groups {{ $controller }}</h1>

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
                    {{ Form::submit('Delete', array('class' => 'btn btn-danger ')) }}

                    {{--{{ Form::submit('Delete', array('class' => 'btn btn-danger delete-event ', 'data-title' => 'Delete group', 'data-content')) }}--}}
                {{ Form::close() }}

                {{--{{ Html::link(URL::route('Groups.destroy',$event->id), 'Delete', array('class' => 'btn btn-small btn-danger delete-event', 'data-title'=>'Delete group', 'data-content' => 'Are you sure you want to delete this groups?', 'onClick'=>'return false;')) }}--}}

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