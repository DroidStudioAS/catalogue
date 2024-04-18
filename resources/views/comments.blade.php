@extends("layouts.layout")
@section("content")
    <h3>All Comments For {{$product->brand->name}} {{$product->name}}</h3>
    @foreach($comments as $key=>$comment)
        <div class="{{$key%2===0? "comment_even":"comment_uneven"}}">
            <div class="comment_signature">
                <p>{{$comment->name}}, {{$comment->email}}</p>
                <p>{{\Carbon\Carbon::parse($comment->created_at)->format("Y-m-d")}}</p>
            </div>
            <p>"{{$comment->comment}}"</p>
        </div>
    @endforeach
    @if($comments->links() !== null)
        {{$comments->links()}}
    @endif

@endsection
