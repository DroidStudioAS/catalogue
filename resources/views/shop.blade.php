@extends("layouts.layout")
@section("content")
    <h2>All Products</h2>
    <div onclick="toggleFilters()" class="filters_toggle">Search</div>

    <div class="filters">

    </div>

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
                <div class="action_buttons">
                    <div onclick="displayComments({{$product->id}})" class="comments_toggle">
                        Show Comments
                    </div>
                    <div id="{{$product->id . "commentContainer"}}" class="comments">
                        @foreach($product->approvedComments as $comment)
                            <div class="comment">
                                <div class="comment_signature">
                                    <p>{{$comment->name}} {{$comment->email}}</p>
                                    <p>{{\Carbon\Carbon::parse($comment->created_at)->format("Y-m-d")}}</p>
                                </div>
                                <p>{{$comment->comment}}</p>
                            </div>
                        @endforeach
                        <form method="POST" action="{{route("add.comment")}}" class="comment">
                            {{csrf_field()}}
                            <input type="hidden" name="product_id" value="{{$product->id}}">
                            <div class="comment_signature">
                                <input type="text" name="name" placeholder="name">
                                <input type="email" name="email" placeholder="email">
                            </div>

                            <textarea name="comment" placeholder="comment"></textarea>
                            <input type="submit" value="send">
                        </form>
                    </div>
                </div>

            </div>
        @endforeach
    </div>
    <script>

        function displayComments(id){
            $("#"+id+"commentContainer").css("display","flex");
        }
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
