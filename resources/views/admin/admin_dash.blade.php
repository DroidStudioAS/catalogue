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

                <div class="button_container">
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
                    <form action="{{route("admin.comment.delete",["comment"=>$comment])}}" method="POST">
                        {{csrf_field()}}
                        <button>
                            Delete Comment
                        </button>
                    </form>
                </div>

            </div>
        @endforeach
    </div>
    <div onclick="toggleFilters()" class="filters_toggle">Search</div>

    <div class="filters">
        <form class="filters" action="{{route("admin.comment.filter")}}" method="GET">
            <label for="name">Name</label>
            <input type="text" name="name" id="" class="input_text">
            <label for="email">Email</label>
            <input type="text" name="email" id="" class="input_text">
            <label for="comment">Comment</label>
            <textarea type="text" name="comment" id="" class="input_textarea"></textarea>
            <input type="submit">
        </form>
    </div>

    <script>
        let filtersExpanded = false;
        function toggleFilters(){
            let right = "0px";
            if(filtersExpanded){
                right = "-300px";
            }
            $(".filters").animate({
                right:right
            },500)

            filtersExpanded=!filtersExpanded;
            console.log(right);
        }
    </script>
@endsection
