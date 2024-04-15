<?php

namespace App\Helpers;

use App\Models\ProductModel;
use Illuminate\Support\Str;

class ProductHelper
{
public static function buildImagePath(ProductModel $product){
    return "/storage/res/".$product->category->id."/".Str::slug($product->name)."/main.png";
}

}
