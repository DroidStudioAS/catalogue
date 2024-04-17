@extends("layouts.layout")
@section("content")
    <h2>All Products</h2>
    <div onclick="toggleFilters()" class="filters_toggle">Search</div>

    <div class="filters">
        <form class="filters" action="{{route("shop.search")}}" method="GET">
            <label for="brand_id">Brand</label>
            <select class="input_text" name="brand_id" id="brand_id">
                @foreach($categories as $category)
                    <option value="{{$category->id}}">{{$category->name}}</option>
                @endforeach
            </select>
            <label for="name">Model</label>
            <input class="input_text" type="text" name="name" id="name">
            <label for="description">Description</label>
            <textarea class="input_textarea" name="description" placeholder="description">
            </textarea>
            <label for="price">Price</label>
            <input id="price" type="range" name="price" min="{{$minMaxPrice[0]}}" max="{{$minMaxPrice[1]}}">
            <span id="priceRange"></span>
            <input class="input_submit" type="submit">
        </form>
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
                <div id="{{$product->id . "ActionButtons"}}" class="action_buttons">
                    <div id="{{"displayComments" . $product->id}}" onclick="displayComments({{$product->id}})" class="comments_toggle">
                        Show Comments
                    </div>
                    <div id="{{$product->id . "commentContainer"}}" class="comments">
                        @foreach($product->approvedComments as $key=>$comment)
                            <div class="{{$key%2===0? "comment_even":"comment_uneven"}}">
                                <div class="comment_signature">
                                    <p>{{$comment->name}}, {{$comment->email}}</p>
                                    <p>{{\Carbon\Carbon::parse($comment->created_at)->format("Y-m-d")}}</p>
                                </div>
                                <p>"{{$comment->comment}}"</p>
                            </div>
                        @endforeach
                        <form method="POST" action="{{route("add.comment")}}" class="comment_form">
                            <h4>Leave A Comment</h4>
                            {{csrf_field()}}
                            <input type="hidden" name="product_id" value="{{$product->id}}">
                            <div class="comment_signature">
                                <input class="input_text" type="text" name="name" placeholder="name">
                                <input class="input_text" type="email" name="email" placeholder="email">
                            </div>

                            <textarea class="input_comment" name="comment" placeholder="comment"></textarea>
                            <input class="input_submit" type="submit" value="Post">
                        </form>
                    </div>
                </div>

            </div>
        @endforeach
    </div>
    <script>

        $('#price').on('input', function(){
                $('#priceRange').text($(this).val() + "$");
        });
        function displayComments(id){
            if($("#"+id+"commentContainer").css("display")==="flex"){
                $("#"+id+"commentContainer").css("display","none");
                $("#"+id+"ActionButtons").removeClass("expanded");
                $("#displayComments"+id).text("Show Comments")
                return;
            }
            $("#"+id+"commentContainer").css("display","flex");
            $("#"+id+"ActionButtons").addClass("expanded");
            $("#displayComments"+id).text("Hide Comments")

        }        let filtersExpanded = false;
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
