    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-header">
            <ul class="nav navbar-nav">
                <li><a href="/"><i class="fa fa-home icon-white"></i> Sharon Hall</a></li>
                <li><a href="/publicgroup/17"><i class="fa fa-clock-o icon-white"></i> Current</a></li>

                @if (Auth::guest())

                    <li><a href="/login">Login</a></li>

                @else

                <li><a href="/groups"><i class="fa fa-folder icon-white"></i> Groups</a></li>
                <li><a href="/works"><i class="fa fa-heart icon-white"></i> Works</a></li>
                <li><a href="/texts"><i class="fa fa-file-text icon-white"></i> Texts</a></li>
                <li><a href="/users"><i class="fa fa-group icon-white"></i> Users</a></li>
                <li><a href="#"><i class="fa fa-user"></i> {{ Auth::check() ?  Auth::user()->username : "" }}</a></li>
                <li><a href="/logout">Logout</a></li>

                @endif

            </ul>
        </div>
    </nav>