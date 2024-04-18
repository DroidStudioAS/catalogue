<?php

namespace App\Helpers;

use App\Http\Requests\EditProductRequest;
use App\Models\ProductModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ProductHelper
{
    public static function buildImagePath(ProductModel $product)
    {
        return asset("storage/res/products/".$product->brand->id."/".Str::slug($product->name)."/".$product->image_path);
    }

    public static function updateImageDirectory (EditProductRequest $request, ProductModel $product)
        {
            if (Storage::exists($product->image_route())) {
                Storage::move($product->image_route(),
                    "/public/res/products/" . $request->brand_id . "/" . Str::slug($request->name));
            }
        }
    public static function updateProductImage($file, ProductModel $product)
    {
        $directory = $product->image_route();

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
