<!-- app/views/works/create.blade.php -->

<!DOCTYPE html>
<html>
<head>
	<title>Look! I'm CRUDding</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">

<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<a class="navbar-brand" href="{{ URL::to('works') }}">work Alert</a>
	</div>
	<ul class="nav navbar-nav">
		<li><a href="{{ URL::to('works') }}">View All works</a></li>
		<li><a href="{{ URL::to('works/create') }}">Create a work</a>
	</ul>
</nav>

<h1>Create a work</h1>

<!-- if there are creation errors, they will show here -->
{{ HTML::ul($errors->all()) }}

{{ Form::open(array('url' => 'works')) }}

	<div class="form-group">
		{{ Form::label('title', 'Title') }}
		{{ Form::text('title', Input::old('title'), array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('reference', 'Reference') }}
		{{ Form::text('reference', Input::old('reference'), array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('media', 'Media') }}
		{{ Form::text('media', Input::old('media'), array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('dimensions', 'Dimensions') }}
		{{ Form::text('dimensions', Input::old('dimensions'), array('class' => 'form-control')) }}
	</div>

	<div class="form-group">
		{{ Form::label('work_date', 'Work date') }}
		{{ Form::text('work_date', Input::old('work_date'), array('class' => 'form-control')) }}
	</div>

	{{ Form::submit('Create the work!', array('class' => 'btn btn-primary')) }}

{{ Form::close() }}

</div>
</body>
</html>