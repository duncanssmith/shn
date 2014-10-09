    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">SHN</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="/">Home</a></li>

            @if (Auth::guest())

                <li><a href="/register">Register</a></li>

                <li><a href="/login">Login</a></li>

            @else

                <li><a href="/groups">Groups</a></li>
                <li><a href="/works">Works</a></li>
                <li><a href="/users">Users</a></li>

                <li><a href="/logout">Logout</a></li>

            @endif

          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>