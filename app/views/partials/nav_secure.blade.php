    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-header">
            <ul class="nav navbar-nav">
                <li><a href="/"><i class="fa fa-home icon-white"></i></a></li>

                @if (Auth::guest())

                    <li><a href="/login">Login</a></li>

                @else

                <li><a href="/groups">Groups</a></li>
                <li><a href="/works">Works</a></li>
                <li><a href="/texts">Texts</a></li>
                <li><a href="/users">Users</a></li>
                <li><a href="/logout">Logout</a></li>

                @endif

            </ul>
        </div>
    </nav>