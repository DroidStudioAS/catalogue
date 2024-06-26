<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\SearchCommentsRequest;
use App\Models\CommentModel;
use App\Repositories\CommentRepository;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class CommentController extends Controller
{
    private $commentRepo;
    public function __construct()
    {
        $this->commentRepo=new CommentRepository();
    }

    public function index()
    {
        $comments = CommentModel::paginate(15);

        return view("admin.admin_dash", compact("comments"));
    }
    /*
     * This method Approves/Bans comments
     */
    public function toggleCommentStatus(CommentModel $comment): RedirectResponse
    {
        $statusToSet = $comment->status==="pending" ? "approved":"pending";

        $comment->update(["status"=>$statusToSet]);

        return redirect()->back();
    }
    public function deleteComment(CommentModel $comment): RedirectResponse
    {
        $comment->delete();

        return redirect()->back()->with("message", "Comment Deleted");
    }
    public function filterComments(SearchCommentsRequest $request) :View
    {
        $status = $request->status===null ? "" : $request->status;

        $comments = $this->commentRepo->searchComments($request,$status);

        return view("admin.admin_dash", compact("comments"));
    }

    public function approveAll(): RedirectResponse
    {
        CommentModel::query()->update(["status"=>"approved"]);
        $comments = CommentModel::paginate(15);
        return redirect()->back()->with("message","All Comments Approved");

    }

    public function banAll(): RedirectResponse
    {
        CommentModel::query()->update(["status"=>"pending"]);
        $comments = CommentModel::paginate(15);
        return redirect()->back()->with("message","All Comments Banned");

    }

}
