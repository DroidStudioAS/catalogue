<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\CommentModel;
use App\Repositories\CommentRepository;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    private $commentRepo;
    public function __construct()
    {
        $this->commentRepo=new CommentRepository();
    }

    public function index(){
        $comments = CommentModel::all();

        return view("admin.admin_dash", compact("comments"));
    }
    /*
     * This method Approves/Bans comments
     */
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

        $comments = $this->commentRepo->searchComments($request,$status);

        return view("admin.admin_dash", compact("comments"));
    }

    }
