@extends("layouts.layout")
@section("content")
    <h2>Editing {{$product->brand->name}} {{$product->name}}</h2>
    <form class="edit_form" action="{{route("admin.shop.edit",["product"=>$product])}}" method="POST">
        {{csrf_field()}}
        <label for="brand_id">Brand</label>
        <select name="brand_id" class="input_text">
            @foreach($categories as $category)
                <option @if($category->id===$product->brand->id) selected @endif
                    value="{{$category->id}}">
                    {{$category->name}}
                </option>
            @endforeach
        </select>
        <label for="name">Model</label>
        <input class="input_text" type="text" name="name" value="{{$product->name}}">
        <label for="brand_id">Description</label>
        <textarea class="input_textarea" type="text" name="description" id="">{{$product->description}}</textarea>
        <label for="price">Price ($)</label>
        <input class="input_text" type="number" name="price" value="{{$product->price}}">
        <label for="image_name">Image</label>
        <input class="input_text" type="file" name="image_name">
        <input type="submit">


    </form>
@endsection
