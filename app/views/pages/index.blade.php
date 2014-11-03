@extends('layout.master')

@section('content')

<div class="starter-content">

<h1>
    {{ Auth::check() ?  "Logged in ". Auth::user()->username : "" }}
</h1>

<p class="lead"></p>
</div>

@stop
