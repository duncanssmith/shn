<!-- app/views/groups/create.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')

<h1>Add page</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::open(array('url' => 'pages')) }}

    <div class="form-group">
        {{ Form::label('name', 'Name') }}
        {{ Form::text('name', Input::old('name'), array('class' => 'form-control')) }}
    </div>

    <div class="form-group">
        {{ Form::label('order', 'Order') }}
        {{ Form::text('order', Input::old('order'), array('class' => 'form-control')) }}
    </div>

    <div class="form-group">
        {{ Form::label('columns', 'Columns') }}
        {{ Form::text('columns', Input::old('columns'), array('class' => 'form-control')) }}
    </div>

    <div class="form-group">
        {{ Form::label('image_size', 'Image size') }}
        {{ Form::text('image_size', Input::old('image_size'), array('class' => 'form-control')) }}
    </div>

    <div class="form-group">
        {{ Form::label('layout', 'Layout') }}
        {{ Form::text('layout', Input::old('layout'), array('class' => 'form-control')) }}
    </div>

    <div class="form-group">
        {{ Form::label('display', 'Display?') }}
        {{ Form::checkbox('display', Input::old('display'), array('class' => 'form-control')) }}
    </div>

    {{ Form::submit('Save', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>

@stop
