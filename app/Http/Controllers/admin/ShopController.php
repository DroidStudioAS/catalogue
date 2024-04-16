<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\BrandModel;
use App\Models\ProductModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ShopController extends Controller
{
    public function index()
    {
        $products = ProductModel::all();

        return view("admin.admin_shop", compact("products"));
    }
    public function deleteProduct(ProductModel $product){
        $product->delete();
        return redirect()->back();
    }
    public function pushToEditPage(ProductModel $product){
        $categories = BrandModel::all();
        return view("admin.admin_edit_shop",compact("product","categories"));
    }
    public function editProduct(ProductModel $product, Request $request){
        $request->validate([
            "brand_id"=>"required|int|exists:brands,id",
            "name"=>"required|string",
            "description"=>"required|string|max:400",
            "price"=>"required|int|gte:1",
            "image_name"=>'nullable|mimes:jpeg'
        ]);
        //edit all except image image
        $product->update($request->except("_token","image_name"));
        //handle image upload
        $file = $request->file('image_name');
        if ($file) {
            $directory = 'res/products/' . $product->brand->id ."/". Str::slug($product->name);

            $filename = 'main.jpeg';

            $existingFilePath = $directory . '/' . $filename;
            if (Storage::disk('public')->exists($existingFilePath)) {
                Storage::disk('public')->delete($existingFilePath);
            }

            Storage::disk('public')->putFileAs($directory, $file, $filename);
        }

        return redirect()->back();
    }
    public function pushToAddPage(){
        $categories = BrandModel::all();
        return view("admin.admin_add_product",compact("categories"));
    }
}
