@extends('layout')

@section('content')

Groups:
    <table>
        <thead>
            <th>Name</th>
        </thead>
    @foreach($groups as $group)
        <tr>
        <td>{{ $group->name }}</td>
        </tr>
    @endforeach
    </table>
@stop
