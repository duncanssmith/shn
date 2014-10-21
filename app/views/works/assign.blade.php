<!-- app/views/works/edit.blade.php -->

@extends('...layout.master')

@section('nav')

    <nav class="navbar navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="{{ URL::to('works') }}">List works</a></li>
            <li><a href="{{ URL::to('works/create') }}">Add work</a>
        </ul>
    </nav>

@stop

@section('content')

<h1>Assign {{ $work->title }} to one or more groups</h1>
<p>Select which groups you want this work to appear in.</p>
<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::model($work, array('route' => array('works.update', $work->id), 'method' => 'PUT')) }}

    <img src="/media/images/160/sh_{{$work->reference}}.jpg">

    @foreach ($groups as $group)

    	<div class="form-group">
    		{{ Form::checkbox('id', null, array('class' => 'form-control')) }}
    		{{ Form::label('name', $group->name) }}
    	</div>

    @endforeach

	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop
