<!-- app/views/pages/group.blade.php -->

@extends('...layout.master')

@section('nav')

@stop

@section('content')

	<div class="jumbotron text-center">
		<h2>{{ $group->name }}</h2>
		<p>
			<strong>Id:</strong> {{ $group->id }}
		</p>
	</div>

	<div>
	    <table>
	        <thead>
	        <th>Image</th>
	        <th>Id</th>
	        <th>Title</th>
	        <th>Media</th>
	        <th>Dimensions</th>
	        <th>Date</th>
	        </thead>
	    			@foreach($group->works as $work)
	    			<tr>
	    		        <td><img src="/media/images/64/sh_{{ $work->reference }}.jpg"></td>
                	    <td>{{ $work->id }}</td>
                	    <td>{{ $work->title }}</td>
                	    <td>{{ $work->media }}</td>
                	    <td>{{ $work->dimensions }}</td>
                	    <td>{{ $work->work_date }}</td>
	    			</tr>
                	@endforeach

	    </table>

	</div>

@stop