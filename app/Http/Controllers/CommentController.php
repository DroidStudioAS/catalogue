<?php

namespace App\Http\Controllers;

use App\Models\CommentModel;
use App\Models\ProductModel;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function addComment( Request $request){
        $request->validate([
            "product_id"=>"required|int|gte:1",
            "name"=>"required|string",
            "email"=>"required|email",
            "comment"=>"required|string"
        ]);
        $comment = CommentModel::create($request->except("_token"));

        return redirect()->back()->with("message", "Comment Posted Successfully... Pending Approval");
    }
}
