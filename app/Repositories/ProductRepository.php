<?php

namespace App\Repositories;

use App\Models\ProductModel;
use Illuminate\Http\Request;


class ProductRepository
{
    private $productModel;
    public function __construct()
    {
        $this->productModel=new ProductModel();
    }

    public function getProductsMinMaxPrice()
    {
        $highestPrice = ProductModel::orderBy("price","desc")->first()->price;
        $lowestPrice = ProductModel::orderBy("price","asc")->first()->price;

        return [$lowestPrice, $highestPrice];
    }

    public function searchProducts(Request $request, $brand)
    {
        $this->productModel= ProductModel::where("brand_id", "LIKE", "%$brand%")
            ->where("name", "LIKE", "%$request->name%")
            ->where("description", "LIKE", "%$request->description%")
            ->where("price", "<=", "$request->price")
            ->get();

        return $this->productModel;
    }
}
