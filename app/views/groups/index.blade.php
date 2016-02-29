<!-- app/views/groups/index.blade.php -->

@extends('...layout.main')

@section('nav')

    @include('partials.nav')

    @include('partials.subnav')

@stop

@section('content')
    <h1>Pages</h1>
    <br>
    <p>{{ $groups->getTotal() }} pages</p>

<!-- will be used to show any messages -->
@if (Session::has('message'))
    <div class="alert alert-info">{{ Session::get('message') }}</div>
@endif

<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Order</td>
            <td>Columns</td>
            <td>Image size</td>
            <td>Layout</td>
            <td>Works</td>
            <td>Texts</td>
            <td>Display?</td>
            <td>Actions</td>
        </tr>
    </thead>
    <tbody>
    @foreach($groups as $group)
        <tr>

            <td>{{ $group->id }}</td>
            <td><a href="/page/{{$group->id}}" title="Click to view this page" target="_blank">{{ $group->name }}</a></td>
            <td>{{ $group->order }}</td>
            <td>{{ $group->columns }}</td>
            <td>{{ $group->image_size }}</td>
            <td>{{ $group->layout }}</td>
            <td>{{ $group->works()->count() }}</a></td>
            <td>{{ $group->texts()->count() }}</a></td>
            <td>
                @if($group->display)
                    <span class="fa fa-check"></span>
                @endif
            </td>

            <td>
                <a class="btn btn-xs btn-info" href="{{ URL::to('pages/' . $group->id . '/edit') }}">Edit</a>
                <a class="btn btn-xs btn-primary" href="{{ URL::to('sort_page_works/' . $group->id ) }}">Sort works</a>
                <a class="btn btn-xs btn-primary" href="{{ URL::to('sort_page_texts/' . $group->id ) }}">Sort texts</a>

                <button class="btn btn-xs btn-danger" data-toggle="modal" data-target="#item-delete-{{$group->id}}">Delete</button>

                <!-- Are you sure you want to delete this? modal /////////////////////////////////// -->
                <div id="item-delete-{{$group->id}}" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Delete</h4>
                            </div>
                            <div class="modal-body">
                                Are you sure you want to delete the page '{{$group->name}}'?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-default" data-dismiss="modal">Close</button>
                                {{ Form::open(array('url' => 'pages/' . $group->id, 'class' => 'pull-right')) }}
                                    {{ Form::hidden('_method', 'DELETE') }}
                                {{ Form::submit('Delete', array('class' => 'btn btn-xs btn-danger ')) }}
                                {{ Form::close() }}
                            </div>
                        </div>
                    </div>
                </div>

            </td>
        </tr>
    @endforeach
    </tbody>
</table>

{{ $groups->links() }}

</div>


<script type="text/javascript">
$(document).ready(function(){
    $('#deleteButton').click( function() {
        $('#item-delete').modal('show');
        return false;
    });
});  
</script>

@stop
