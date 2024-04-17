<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddCommentRequest;
use App\Models\CommentModel;
use App\Models\ProductModel;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function addComment(AddCommentRequest $request): \Illuminate\Http\RedirectResponse
    {

        CommentModel::create($request->except("_token"));

        return redirect()->back()->with("message", "Comment Posted Successfully... Pending Approval");
    }
}
