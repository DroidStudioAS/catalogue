@extends("layouts.layout")
@section("content")
    @foreach($comments as $comment)
        <p>{{$comment}}</p>
    @endforeach
@endsection
