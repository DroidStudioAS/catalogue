<?php

namespace App\Helpers;

use App\Models\ProductModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ProductHelper
{
public static function buildImagePath(ProductModel $product)
{
    return asset("storage/res/products/".$product->brand->id."/".Str::slug($product->name)."/".$product->image_path);
}
public static function updateProductImage($file, ProductModel $product)
{
    $directory = 'res/products/' . $product->brand->id ."/". Str::slug($product->name);

    $filename = 'main.jpeg';

    $existingFilePath = $directory . '/' . $filename;
    if (Storage::disk('public')->exists($existingFilePath)) {
        Storage::disk('public')->delete($existingFilePath);
    }

    Storage::disk('public')->putFileAs($directory, $file, $filename);
}
public static function uploadProductImage($file, ProductModel $product)
{
    $directory = 'res/products/' . $product->brand->id ."/". Str::slug($product->name);
    $filename = 'main.jpeg';
    Storage::disk('public')->putFileAs($directory, $file, $filename);
}


}
