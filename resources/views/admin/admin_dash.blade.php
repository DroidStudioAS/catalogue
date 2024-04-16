@extends("layouts.layout")
@section("content")
    <h3>Approve Comments</h3>
    <div class="product_container">
        @foreach($comments as $key=>$comment)
            <div class="{{$key%2===0? "comment_card_even" : "comment_card_uneven"}}">
                <p>Name: {{$comment->name}}</p>
                <p>Email: {{$comment->email}}</p>
                <p>For: {{$comment->product->brand->name}}  {{$comment->product->name}}</p>
                <p>Comment: {{$comment->comment}}</p>
                <p>Status: {{$comment->status}}</p>

                <form action="{{route("admin.comment",["comment"=>$comment])}}" method="POST">
                    {{csrf_field()}}
                    <button>
                        @if($comment->status==="pending")
                            Approve Comment
                        @else
                            Ban Comment
                        @endif
                    </button>
                </form>
            </div>
        @endforeach
    </div>

@endsection
