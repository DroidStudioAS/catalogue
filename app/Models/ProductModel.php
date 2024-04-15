<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductModel extends Model
{
    protected $table = "products";

    protected $fillable = ["brand_id", "name", "image_path","description","price"];

    public function brand(){
        return $this->hasOne(BrandModel::class, "id","brand_id");
    }
}