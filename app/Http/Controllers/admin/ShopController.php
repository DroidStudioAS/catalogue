<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
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
}
