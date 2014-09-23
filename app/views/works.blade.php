@extends('layout')

@section('content')

Works:
    <table>
        <thead>
            <th>Title</th>
            <th>Reference</th>
            <th>Media</th>
            <th>Dimensions</th>
            <th>Date</th>
            <th>Image</th>
        </thead>
    @foreach($works as $work)
        <tr>
        <td>{{ $work->title }}</td>
        <td>{{ $work->reference }}</td>
        <td>{{ $work->media }}</td>
        <td>{{ $work->dimensions }}</td>
        <td>{{ $work->work_date }}</td>

        <td><img src="public/images/{{ $work->reference }}.jpg"></td>
        </tr>
    @endforeach
    </table>
@stop
