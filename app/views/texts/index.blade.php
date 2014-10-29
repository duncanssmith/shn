<!-- app/views/texts/index.blade.php -->

@extends('...layout.master')

@section('nav')

    <nav class="navbar navbar">
        <ul class="nav navbar-nav">
            <li><a href="{{ URL::to('texts') }}">List texts</a></li>
            <li><a href="{{ URL::to('texts/create') }}">Add text</a>
        </ul>
    </nav>

@stop

@section('content')
    <h1> {{ $texts->getTotal() }} Texts</h1>

<!-- will be used to show any messages -->
@if (Session::has('message'))
	<div class="alert alert-info">{{ Session::get('message') }}</div>
@endif

<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<td>Id</td>
			<td>Title</td>
			<td>Author</td>
			<td>Description</td>
			<td>Year</td>
			<td>Content</td>
			<td>Publication</td>
			<td>Publication date</td>
			<td>Actions</td>
		</tr>
	</thead>
	<tbody>
	@foreach($texts as $key => $text)
		<tr>

            <td>{{ $text->id }}</td>
            <td>{{ $text->title }}</td>
            <td>{{ $text->author }}</td>
            <td>{{ $text->description }}</td>
            <td>{{ $text->year }}</td>
            <td>{{ $text->content }}</td>
            <td>{{ $text->publication }}</td>
            <td>{{ $text->publication_date }}</td>

			<!-- we will also add show, edit, and delete buttons -->
			<td>

				<!-- delete the text (uses the destroy method DESTROY /texts/{id} -->
				<!-- we will add this later since its a little more complicated than the other two buttons -->
		        {{ Form::open(array('url' => 'texts/' . $text->id, 'class' => 'pull-right')) }}
                    {{ Form::hidden('_method', 'DELETE') }}
                    {{ Form::submit('Delete', array('class' => 'btn btn-danger ')) }}

                    {{--{{ Form::submit('Delete', array('class' => 'btn btn-danger delete-event ', 'data-title' => 'Delete text', 'data-content')) }}--}}
                {{ Form::close() }}

                {{--{{ Html::link(URL::route('Groups.destroy',$event->id), 'Delete', array('class' => 'btn btn-small btn-danger delete-event', 'data-title'=>'Delete text', 'data-content' => 'Are you sure you want to delete this texts?', 'onClick'=>'return false;')) }}--}}

				<!-- show the text (uses the show method found at GET /texts/{id} -->
				<a class="btn btn-small btn-success" href="{{ URL::to('texts/' . $text->id) }}">Show</a>

				<!-- edit this text (uses the edit method found at GET /texts/{id}/edit -->
				<a class="btn btn-small btn-info" href="{{ URL::to('texts/' . $text->id . '/edit') }}">Edit</a>

			</td>
		</tr>
	@endforeach
	</tbody>
</table>
{{ $texts->links()}}
</div>

@stop