<?php

namespace App\Http\Controllers;

use App\Models\ProductModel;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function addComment(ProductModel $product, Request $request){
        $request->validate([
            "name"=>"required|string",
            "email"=>"required|email",
            "comment"=>"required|string"
        ]);
    }
}
