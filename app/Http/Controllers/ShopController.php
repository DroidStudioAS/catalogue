<?php

namespace App\Http\Controllers;

use App\Models\BrandModel;
use App\Models\ProductModel;
use App\Repositories\ProductRepository;
use Illuminate\Http\Request;
use Illuminate\View\View;

class ShopController extends Controller
{
    private $productRepo;
    public function __construct()
    {
        $this->productRepo=new ProductRepository();
    }

    public function index():View
    {
        $products = ProductModel::all();
        $categories = BrandModel::all();

        $minMaxPrice = $this->productRepo->getProductsMinMaxPrice();

        return view("shop", compact("products", "categories", "minMaxPrice"));
    }

    public function search(Request $request) :View
    {
        $categories = BrandModel::all();
        $minMaxPrice = $this->productRepo->getProductsMinMaxPrice();

        $brand = $request->brand_id===null? "" : $request->brand_id;

        $products =$this->productRepo->searchProducts($request,$brand);

        return view("shop", compact("products", "categories", "minMaxPrice"));
    }
}
