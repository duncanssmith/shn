<!-- app/views/works/show.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')

    <div class="text-left">
        <h2>Title: {{ $work->title }}</h2>

        <img src="/media/images/640/{{$work->reference}}.jpg">
        <table class="work-data work-data-1">
            <tr>
                <th> Title </th>
                <td> {{ $work->title }} </td>
            </tr>
            <tr>
                <th> Reference </th>
                <td> {{ $work->reference }} </td>
            </tr>
            <tr>
                <th> Media </th>
                <td> {{ $work->media }} </td>
            </tr>
            <tr>
                <th> Dimensions </th>
                <td> {{ $work->dimensions }} </td>
            </tr>
            <tr>
                <th> Date </th>
                <td> {{ $work->work_date }} </td>
            </tr>
            <tr>
                <th> Description </th>
                <td> {{ $work->description }} </td>
            </tr>
            <tr>
                <th> Notes </th>
                <td> {{ $work->notes }} </td>
            </tr>
        </table>
        </p>
    <a href="/works" class="btn btn-default"><i class="fa fa-arrow-left" style="color:#999;"></i> Back</a>
    </div>

@stop
