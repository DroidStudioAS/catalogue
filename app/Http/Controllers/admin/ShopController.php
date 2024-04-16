<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\BrandModel;
use App\Models\ProductModel;
use Illuminate\Http\Request;

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
        dd($request->all());
    }
}
