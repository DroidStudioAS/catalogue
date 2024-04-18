<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class ProductModel extends Model
{
    protected $table = "products";

    protected $fillable = ["brand_id", "name", "image_path","description","price"];

    public function brand(){
        return $this->hasOne(BrandModel::class, "id","brand_id");
    }
    public function comments(){
        return $this->hasMany(CommentModel::class, "product_id","id");
    }
    public function approvedComments ()
    {
        return $this->hasMany(CommentModel::class, "product_id","id")->where(["status"=>"approved"]);

    }

    public function image_route()
    {
        return '/public/res/products/' . $this->brand->id ."/". Str::slug($this->name);
    }


}
