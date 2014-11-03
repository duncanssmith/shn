<!-- app/views/pages/group.blade.php -->

@extends('...layout.public')

@section('nav')

@stop

@section('content')

	<div class="text-left">
		<h2>{{ $group->name }}</h2>
	</div>

	<div>
        <?php $i = 0?>
        <table>
	    @foreach($group->works as $work)
        <tr>
    		<td>
    	    	<a href="/publicwork/{{$work->id}}"><img src="/media/images/64/sh_{{ $work->reference }}.jpg"></a><br>
                {{ $work->title }} <br>
                {{ $work->media }} <br>
                {{ $work->dimensions }} <br>
                {{ $work->work_date }}
            </td>
        </tr>    
        @endforeach
        </table>
	</div>

@stop