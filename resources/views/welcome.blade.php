@extends("layouts.layout")
@section("content")
    @foreach($products as $product)
        <img src="{{\App\Helpers\ProductHelper::buildImagePath($product)}}"/>
        <p>
            {{$product->brand->name}}
        </p>
        <p>
            {{$product->name}}
        </p>
        <p>
            {{$product->description}}
        </p>
        <p>
            {{$product->price}}
        </p>
    @endforeach
@endsection
