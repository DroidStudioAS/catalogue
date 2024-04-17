<?php

namespace App\Http\Controllers;

use App\Models\ProductModel;
use Illuminate\View\View;

class HomeController extends Controller
{
    public function index() : View{
        $products = ProductModel::latest()->take(9)->get();

        return view("welcome", compact("products"));

    }
}
