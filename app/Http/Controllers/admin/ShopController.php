<?php

namespace App\Http\Controllers\admin;

use App\Helpers\ProductHelper;
use App\Http\Controllers\Controller;
use App\Http\Requests\AddProductRequest;
use App\Http\Requests\EditProductRequest;
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
    public function pushToAddPage()
    {
        $categories = BrandModel::all();
        return view("admin.admin_add_product",compact("categories"));
    }
    public function pushToEditPage(ProductModel $product)
    {
        $categories = BrandModel::all();
        return view("admin.admin_edit_shop",compact("product","categories"));
    }

    /*****CUD Methods****/
    public function deleteProduct(ProductModel $product)
    {
        $product->delete();
        return redirect()->back();
    }
    public function editProduct(ProductModel $product, EditProductRequest $request){
        //edit all except image image
        $product->update($request->except("_token","image_name"));
        //handle image upload
        $file = $request->file('image_name');

        if ($file) {
            ProductHelper::updateProductImage($file,$product);
        }

        return redirect()->back();
    }

    public function addProduct(AddProductRequest $request){
        $product = ProductModel::create($request->except("_token","image_name"));
        //upload file
        $file = $request->file('image_name');
        if ($file) {
           ProductHelper::uploadProductImage($file, $product);
        }

        return redirect()->back();
    }
}
