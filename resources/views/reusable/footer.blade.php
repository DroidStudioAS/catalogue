<footer class="app_footer">
    <p>Footer</p>
    @if(!\Illuminate\Support\Facades\Auth::check())
        <p><a href="/login">Login As Admin</a></p>
    @else
        @if(request()->is('admin*'))
            <p><a href="{{route('home')}}">Back To Home</a></p>
        @else
            <p><a href="{{route('admin.comment')}}">Admin Panel</a></p>
        @endif
            <a href="{{ route('logout')  }}"
               onclick="event.preventDefault();
                 document.getElementById('logout-form').submit();">
                Logout
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
    @endif
</footer>
