@extends("layouts.layout")
@section("content")
    @foreach($comments as $comment)
       <div class="comment_card">
           <p>Name: {{$comment->name}}</p>
           <p>Email: {{$comment->email}}</p>
           <p>For: {{$comment->product->brand->name}}  {{$comment->product->name}}</p>
           <p>Comment: {{$comment->comment}}</p>
           <p>Status: {{$comment->status}}</p>
           <button>
               @if($comment->status==="pending")
                   Approve Comment
               @else
                    Ban Comment
               @endif
           </button>
       </div>
    @endforeach
@endsection
