@extends('...layout.main')

@section('nav')

    @include('...partials.nav')

@stop

@section('content')

    <h1>Reset your password</h1>

    {{ Form::open() }}

        <div>
            {{ Form::label('email', 'Email address:') }}
            {{ Form::email('email') }}
        </div>

        <div>
            {{ Form::submit('Reset') }}
        </div>

    {{ Form::close() }}

    @if (Session::has('error'))

        <p style="color:red;">{{ Session::get('error') }}</p>

    @elseif (Session::has('status'))

        <p>{{ Session::get('status') }}</p>

    @endif
@stop
