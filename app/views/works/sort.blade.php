<!-- app/views/works/index.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')
    <br>

@stop

@section('content')

    <h1>{{ $group->name }} works</h1>

<!-- will be used to show any messages -->
@if (Session::has('message'))
    <div class="alert alert-info">{{ Session::get('message') }}</div>
@endif

<table class="table table-striped table-bordered group" data-groupid="{{ $group->id}}">
    <thead>
        <tr>
            <td>Image</td>
            <td>Title</td>
            <td>Reference</td>
            <td>Media</td>
            <td>Dimensions</td>
            <td>Date</td>
            <td>Description</td>
            <td>Notes</td>
        </tr>
    </thead>
    <tbody id="sortable" class="sortable">
    @foreach($works as $work)
        <tr class="ui-state-default" data-id="{{ $work->id }}">

            <td><a href="{{ URL::to('works/' . $work->id) }}"><img src="/media/images/64/sh_{{ $work->reference }}.jpg"></a></td>
            <td>{{ $work->title }}</td>
            <td>{{ $work->reference }}</td>
            <td>{{ $work->media }}</td>
            <td>{{ $work->dimensions }}</td>
            <td>{{ $work->work_date }}</td>
            <td>{{ $work->description }}</td>
            <td>{{ $work->notes }}</td>

        </tr>
    @endforeach
    </tbody>
</table>


</div>

<!-- Are you sure you want to delete this? modal /////////////////////////////////// -->
<div id="item-delete" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Delete</h4>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this work?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                <!-- delete the group (uses the destroy method DESTROY /groups/{id} -->
                <!-- we will add this later since its a little more complicated than the other two buttons -->
                {{ Form::open(array('url' => 'works/' . $work->id, 'class' => 'pull-right')) }}
                {{ Form::hidden('_method', 'DELETE') }}
                {{ Form::submit('Delete', array('class' => 'btn btn-sm btn-danger ')) }}
                {{ Form::close() }}
            </div>
        </div>
    </div>
</div>

@stop
