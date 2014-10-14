<!-- app/views/works/show.blade.php -->

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

<h1>{{ $work->name }}</h1>

	<div class="jumbotron text-center">
		<h2>{{ $work->title }}</h2>
		<img src="/media/images/320/sh_{{$work->reference}}.jpg">
		<p>
			<strong>Reference:</strong> {{ $work->reference }}<br>
			<strong>Media:</strong> {{ $work->media }}<br>
			<strong>Dimensions:</strong> {{ $work->dimensions }}<br>
			<strong>Work date:</strong> {{ $work->work_date }}
		</p>
	</div>

	<div>
    <!-- if there are creation errors, they will show here -->
        {{ HTML::ul($errors->all()) }}
        {{ Form::open(array('url' => 'works')) }}
        {{ Form::model($work, array('route' => array('works.update', $work->id), 'method' => 'PUT')) }}

	    @foreach($groups as $group)

        	<div class="form-group">
        		{{ Form::label('group', $group->name) }}
        		{{ Form::checkbox('group', null, array('class' => 'form-control')) }}
        	</div>

	    @endforeach

	    {{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

        {{ Form::close() }}

</div>

@stop
