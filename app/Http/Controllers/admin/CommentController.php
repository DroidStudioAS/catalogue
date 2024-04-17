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
    public function toggleCommentStatus(CommentModel $comment){
        $statusToSet = $comment->status==="pending" ? "approved":"pending";

        $comment->update(["status"=>$statusToSet]);
        return redirect()->back();
    }
    public function deleteComment(CommentModel $comment){
        $comment->delete();

        return redirect()->back();
    }
    public function filterComments(Request $request){
        $status = $request->status===null ? "" : $request->status;

        $comments = CommentModel::where("name","LIKE","%$request->name%")
            ->where("email","LIKE","%$request->email%")
            ->where("comment","LIKE","%$request->comment%")
            ->where("status", "LIKE", "%$request->status%")
            ->get();


        return view("admin.admin_dash", compact("comments"));
    }

    }
