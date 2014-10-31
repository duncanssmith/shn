<!-- app/views/works/edit.blade.php -->

@extends('...layout.master')

@section('nav')

@include('works.partials.nav')

@stop

@section('content')

<h1>Assign {{ $work->title }} to one or more groups</h1>
<p>Select the groups you want this work to appear in.</p>
<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

<?php //var_dump("<pre>", $arr); die();?>

{{ Form::model($work, array('route' => array('save_assigned_works'), 'method' => 'POST')) }}

    {{ Form::hidden('work_id', $work->id) }}

    <img src="/media/images/64/sh_{{$work->reference}}.jpg">

    	<div class="form-group">
            @foreach ($groups as $group)
        		{{ Form::checkbox('groups_data[]', $group->id, in_array($group->id, $arr)) }}
        		{{ Form::label('name', $group->name) }}
            @endforeach
    	</div>

	{{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

<br>

Work "{{ $work->title }}" is in these groups:

<br>

@foreach ($links as $link)

    {{ $link->id  }}
    {{ $link->name }}

@endforeach

</div>

@stop
