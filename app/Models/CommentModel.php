<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentModel extends Model
{
    protected $table="comments";

    protected $fillable=["product_id","name","email","comment","status"];

    public function product()
    {
        return $this->hasOne(ProductModel::class, "id","product_id");
    }
}
