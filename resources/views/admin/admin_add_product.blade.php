@extends("layouts.layout")
@section("content")
    <h2>Add A Product</h2>
    @if($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <form class="edit_form" action="" method="POST"  enctype="multipart/form-data">
        {{csrf_field()}}
        <label for="brand_id">Brand</label>
        <select name="brand_id" class="input_text">
            @foreach($categories as $category)
                <option value="{{$category->id}}">
                    {{$category->name}}
                </option>
            @endforeach
        </select>
        <label for="name">Model</label>
        <input class="input_text" type="text" name="name">
        <label for="brand_id">Description</label>
        <textarea class="input_textarea" type="text" name="description" id=""></textarea>
        <label for="price">Price ($)</label>
        <input class="input_text" type="number" name="price" value="">
        <label for="image_name">Image</label>
        <input class="input_text" type="file" name="image_name">
        <input type="submit">

    </form>
@endsection
