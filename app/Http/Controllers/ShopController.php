<?php

namespace App\Http\Controllers;

use App\Models\BrandModel;
use App\Models\ProductModel;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function index()
    {
        $products = ProductModel::all();

        $highestPrice = ProductModel::orderBy("price","desc")->first()->price;
        $lowestPrice = ProductModel::orderBy("price","asc")->first()->price;

        $minMaxPrice = [$lowestPrice, $highestPrice];

        $categories = BrandModel::all();
        return view("shop", compact("products", "categories", "minMaxPrice"));
    }

    public function search(Request $request){
        dd($request->all());
    }
}
