<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddCommentRequest;
use App\Models\CommentModel;
use App\Models\ProductModel;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class CommentController extends Controller
{
    public function addComment(AddCommentRequest $request): RedirectResponse
    {

        CommentModel::create($request->except("_token"));

        return redirect()->back()->with("message", "Comment Posted Successfully... Pending Approval");
    }
    public static function viewAllComments (ProductModel $product)
    {
        $comments = $product->approvedComments()->paginate(15);

        return view("comments", compact("product","comments"));
    }
}
