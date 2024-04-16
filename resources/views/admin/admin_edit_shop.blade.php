@extends("layouts.layout")
@section("content")
    <form class="form" action="{{route("admin.shop.edit",["product"=>$product])}}" method="POST">
        {{csrf_field()}}
        <select>
            @foreach($categories as $category)
                <option @if($category->id===$product->brand->id) selected @endif
                    value="{{$category->id}}">
                    {{$category->name}}
                </option>
            @endforeach
        </select>
        <input type="text" name="name" id="">
        <textarea type="text" name="description" id=""></textarea>
        <input type="number">
        <input type="submit">


    </form>
@endsection
