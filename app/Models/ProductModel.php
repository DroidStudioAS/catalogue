<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Support\Str;

class ProductModel extends Model
{
    protected $table = "products";

    protected $fillable = ["brand_id", "name", "image_path","description","price"];

    public function brand(): HasOne
    {
        return $this->hasOne(BrandModel::class, "id","brand_id");
    }
    public function comments(): HasMany
    {
        return $this->hasMany(CommentModel::class, "product_id","id");
    }
    public function approvedComments (): HasMany
    {
        return $this->hasMany(CommentModel::class, "product_id","id")->where(["status"=>"approved"]);

    }
    //relative to storage folder, for backend directory manipulation
    public function image_route(): string
    {
        return '/public/res/products/' . $this->brand->id ."/". Str::slug($this->name);
    }


}
