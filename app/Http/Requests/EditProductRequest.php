<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EditProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "brand_id"=>"required|int|exists:brands,id",
            "name"=>"required|string|max:25",
            "description"=>"required|string|max:120",
            "price"=>"required|int|gte:1",
            "image_name"=>'nullable|mimes:jpeg|max:4096'
        ];
    }
}
