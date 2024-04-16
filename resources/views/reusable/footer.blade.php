<footer class="app_footer">
    <p>Footer</p>
    @if(!\Illuminate\Support\Facades\Auth::check())
        <p><a href="/login">Login As Admin</a></p>
    @else
        @if(request()->is('admin*'))
            <p><a href="{{route('home')}}">Back To Home</a></p>
        @else
            <p><a href="{{route('admin')}}">Admin Panel</a></p>
        @endif
    @endif
</footer>
