<!-- app/views/pages/group.blade.php -->

@extends('...layout.public')

@section('nav')

    @include('partials.nav_public')

@stop

@section('content')

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

               <!--  <p>{{ $work->title }} </p> -->
        <!--    {{ $work->media }} <br>
                {{ $work->dimensions }} <br>
                {{ $work->work_date }} -->
                <!-- Button trigger modal -->
                <a id="modal-{{ $work->reference }}" href="/publicwork/{{$work->id}}?group={{ $group->id}}" class="btn btn-sm btn-default"><i class="fa fa-arrow-right" style="color:#999;"></i> Show</a>
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
        <div class="text-container">
        <br>
            <h4>{{ $text->title }}</h4> <br>
            {{ $text->content }}<br>
            {{ $text->author }} <br>
            {{ $text->year }} <br>
        </div>
        @endforeach
    </div>

@stop