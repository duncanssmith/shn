<!-- app/views/pages/public.blade.php -->

@extends('...layout.master')

@section('nav')

@stop

@section('content')

	<div class="jumbotron text-center">
		<h2>{{ $group->name }}</h2>
		<p>
			Id: {{ $group->id }}
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
	    		        <td><a href="/publicwork/{{$work->id}}"><img src="/media/images/64/sh_{{ $work->reference }}.jpg"></a></td>
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