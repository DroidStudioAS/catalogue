<?php

namespace App\Http\Controllers;

use App\Models\BrandModel;
use App\Models\ProductModel;
use App\Repositories\ProductRepository;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    private $productRepo;
    public function __construct()
    {
        $this->productRepo=new ProductRepository();
    }

    public function index()
    {
        $products = ProductModel::all();
        $categories = BrandModel::all();

        $minMaxPrice = $this->productRepo->getProductsMinMaxPrice();

        return view("shop", compact("products", "categories", "minMaxPrice"));
    }

    public function search(Request $request){
        $categories = BrandModel::all();

        $minMaxPrice = $this->productRepo->getProductsMinMaxPrice();

        $products = ProductModel::where(["brand_id"=>$request->brand_id])
            ->where("name", "LIKE", "%$request->name%")
            ->where("description", "LIKE", "%$request->description%")
            ->where("price", "<=", "$request->price")->get();

        return view("shop", compact("products", "categories", "minMaxPrice"));
    }
}
