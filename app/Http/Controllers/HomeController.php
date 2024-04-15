<?php

namespace App\Http\Controllers;

use App\Models\ProductModel;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $products = ProductModel::latest()->take(9)->get();

        return view("welcome", compact("products"));

    }
}
