<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\CommentModel;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function index(){
        $comments = CommentModel::all();

        return view("admin.admin_dash", compact("comments"));
    }
}
