<!-- app/views/pages/group.blade.php -->

@extends('...layout.public')

@section('nav')

@stop


@section('content')
    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span><i class="fa fa-bars"></i></span>
    </a>
    <div class="nav-collapse collapse">
        <ul class="nav">
        @foreach($group_list as $item)
            <li><a href="/publicgroup/{{$item->id}}" >{{ $item->name }}</a></li>
        @endforeach
        </ul>
    </div>

    <div class="dropdown">
        <a data-toggle="dropdown" href="#">Groups</a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            @foreach($group_list as $item)
                <li><a href="/publicgroup/{{$item->id}}">{{ $item->name }}</a></li>
            @endforeach
        </ul>
    </div> 


	<div class="text-left">
		<h2>{{ $group->name }}</h2>
	</div>

	<div>
        <table>
	    @foreach($group->works as $work)

            @if($i % $columns == 0)
                @if($i==0)
            <tr>
                @else
            </tr>
            <tr>
                @endif
            @endif
                <td class="work-container">

    	    	<a id="modal-{{ $work->reference }}" data-toggle="modal" data-target="#item-show-{{ $work->reference }}" ><img src="/media/images/120/sh_{{ $work->reference }}.jpg"></a><br>

                <p>{{ $work->title }} </p>
<!--                 {{ $work->media }} <br>
                {{ $work->dimensions }} <br>
                {{ $work->work_date }} -->
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
                        <div class="modal-body ">
                            <img src="/media/images/320/sh_{{ $work->reference }}.jpg">
                        </div>
                        <div class="modal-footer">
                            <p class="modal-title pull-left">{{ $work->media }}</p>
                            <p class="modal-title pull-left">{{ $work->dimensions }}</p>
                            <p class="modal-title pull-left">{{ $work->work_date }}</p>
                            <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
                </td>
            <?php $i++ ?>
        @endforeach
            </tr>
        </table>
	</div>

    <div>
        @foreach($group->texts as $text)
            <br>
            {{ $text->title }} <br>
            {{ $work->author }} <br>
            {{ $work->year }} <br>
            {{ $text->content }}
        @endforeach
    </div>

@stop