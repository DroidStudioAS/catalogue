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
        return [
            ProductModel::orderBy("price","asc")->first()->price,
            ProductModel::orderBy("price","desc")->first()->price
        ];
    }

    public function searchProducts(Request $request, $brand)
    {
        return ProductModel::where("brand_id", "LIKE", "%$brand%")
            ->where("name", "LIKE", "%$request->name%")
            ->where("description", "LIKE", "%$request->description%")
            ->where("price", "<=", "$request->price")
            ->get();
    }
}
