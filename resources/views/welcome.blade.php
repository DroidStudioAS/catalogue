@extends("layouts.layout")
@section("content")
    @foreach($products as $product)
        <div class="product_card">
            <img src="{{\App\Helpers\ProductHelper::buildImagePath($product)}}" alt="product_image" class="product_image">
            <div class="product_data">
                <div class="product_name_desc">
                    <p>{{$product->brand->name}}  {{$product->name}}</p>
                    <p>{{$product->description}}</p>
                </div>
                <p>{{$product->price}}$</p>
            </div>
        </div>
    @endforeach

@endsection
