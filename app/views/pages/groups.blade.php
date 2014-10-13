<!-- app/views/pages/groups.blade.php -->

@extends('...layout.master')

@section('nav')

@stop

@section('content')

	<div>
	    <table>
	        <thead>
	        <th>Id</th>
	        <th>Name</th>
	        </thead>
	    			@foreach($groups as $group)
	    			<tr>
                	    <td>{{ $group->id }}</td>
                	    <td><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></td>
	    			</tr>
                	@endforeach
	    </table>

	</div>

@stop