@extends("layouts.layout")
@section("content")
    @if(session()->has("message"))
        <h3>{{session("message")}}</h3>
    @endif
    <div class="product_container">
        @foreach($products as $product)
            <div class="product_card">
                <div class="product_content">
                    <img src="{{\App\Helpers\ProductHelper::buildImagePath($product)}}" alt="product_image" class="product_image">
                    <div class="product_data">
                        <div class="product_name_desc">
                            <p>{{$product->brand->name}}, {{$product->name}}</p>
                            <p>{{$product->description}}</p>
                        </div>
                        <p>{{$product->price}}$</p>
                    </div>
                </div>
                <div id="{{$product->id . "ActionButtons"}}" class="action_buttons">
                    <div id="{{"displayComments" . $product->id}}" onclick="displayComments({{$product->id}})" class="comments_toggle">
                        Show Comments
                    </div>
                    <div id="{{$product->id . "commentContainer"}}" class="comments">
                        @foreach($product->approvedComments as $key=>$comment)
                            <div class="{{$key%2===0? "comment_even":"comment_uneven"}}">
                                <div class="comment_signature">
                                    <p>{{$comment->name}} {{$comment->email}}</p>
                                    <p>{{\Carbon\Carbon::parse($comment->created_at)->format("Y-m-d")}}</p>
                                </div>
                                <p>{{$comment->comment}}</p>
                            </div>
                        @endforeach
                        <form method="POST" action="{{route("add.comment")}}" class="comment_form">
                            {{csrf_field()}}
                            <input type="hidden" name="product_id" value="{{$product->id}}">
                            <div class="comment_signature">
                                <input class="input_text" type="text" name="name" placeholder="name">
                                <input class="input_text" type="email" name="email" placeholder="email">
                            </div>

                            <textarea class="input_comment" name="comment" placeholder="comment"></textarea>
                            <input class="input_submit" type="submit" value="send">
                        </form>
                    </div>
                </div>

            </div>
        @endforeach
    </div>
@endsection
