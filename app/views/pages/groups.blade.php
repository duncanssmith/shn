<!-- app/views/pages/groups.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

	<div>
	    <table>
	        <thead>
                <th>Id</th>
                <th>Name</th>
	        </thead>
	        <tbody>
	    		@foreach($groups as $group)
	    			<tr>
                	    <td>{{ $group->id }}</td>
                	    <td><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></td>
	    			</tr>
                @endforeach
	        </tbody>
	    </table>
	</div>

@stop