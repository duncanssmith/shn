@extends('layout')

@section('content')

Works:
    <table>
        <thead>
            <th>&nbsp;</th>
            <th>Title</th>
            <th>Reference</th>
            <th>Media</th>
            <th>Dimensions</th>
            <th>Date</th>
        </thead>
    @foreach($works as $work)
        <tr>
        <td><img src="/media/images/64/sh_{{ $work->reference }}.jpg"></td>
        <td>{{ $work->title }}</td>
        <td>{{ $work->reference }}</td>
        <td>{{ $work->media }}</td>
        <td>{{ $work->dimensions }}</td>
        <td>{{ $work->work_date }}</td>

        </tr>
    @endforeach
    </table>
@stop
