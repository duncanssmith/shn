<!-- app/views/pages/groups.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

	<div>
	    @foreach($groups as $group)
           <p><a href="/publicgroup/{{$group->id}}">{{ $group->name }}</a></p>
        @endforeach
	</div>

@stop