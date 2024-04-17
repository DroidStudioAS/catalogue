<?php

namespace App\Repositories;

use App\Models\ProductModel;

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
}
