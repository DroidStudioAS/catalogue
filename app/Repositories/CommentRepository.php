<?php

namespace App\Repositories;

use App\Models\CommentModel;
use Illuminate\Http\Request;

class CommentRepository{
    private $commentModel;
    public function __construct()
    {
        $this->commentModel=new CommentModel();
    }
    public function searchComments(Request $request, string $status)
    {
        return CommentModel::where("name","LIKE","%$request->name%")
            ->where("email","LIKE","%$request->email%")
            ->where("comment","LIKE","%$request->comment%")
            ->where("status", "LIKE", "%$status%")
            ->get();

    }

}
