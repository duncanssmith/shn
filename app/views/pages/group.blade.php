<!-- app/views/pages/group.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

	<div class="text-left">
		<h2>{{ $group->name }}</h2>
	</div>

	<div>

	    @foreach($group->works as $work)
            <br>
	    	<a id="modal-{{ $work->reference }}" data-toggle="modal" data-target="#item-show-{{ $work->reference }}" ><img src="/media/images/64/sh_{{ $work->reference }}.jpg"></a><br>
            {{ $work->title }} <br>
            {{ $work->media }} <br>
            {{ $work->dimensions }} <br>
            {{ $work->work_date }}
            <!-- Button trigger modal -->
            <a id="modal-{{ $work->reference }}" href="/publicwork/{{$work->id}}" class="btn btn-sm btn-default">Show</a>

                    <!-- Image display modal ////////////////////////////////////////////////////////// -->
            <div id="item-show-{{ $work->reference }}" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
                            <h4 class="modal-title">{{ $work->title }}</h4>
                        </div>
                        <div class="modal-body">
                            <img src="/media/images/64/sh_{{ $work->reference }}.jpg"><br>
                        </div>
                        <div class="modal-footer">
                            <h6 class="modal-title pull-left">{{ $work->media }}</h6><br>
                            <h6 class="modal-title pull-left">{{ $work->dimensions }}</h6><br>
                            <h6 class="modal-title pull-left">{{ $work->work_date }}</h6>
                            <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
	</div>

@stop