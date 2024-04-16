@extends("layouts.layout")
@section("content")
    <h2>Edit Products</h2>
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
                <div class="button_container">
                    <form action="{{route("admin.shop.push.edit", ["product"=>$product])}}" method="GET">
                        {{csrf_field()}}
                        <button class="edit_button">Edit</button>
                    </form>
                    <form action="{{route("admin.shop.delete", ["product"=>$product])}}" method="POST">
                        {{csrf_field()}}
                        <button class="delete_button">Delete</button>
                    </form>
                </div>
            </div>
        @endforeach
    </div>
@endsection
