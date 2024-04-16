<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ShopController;
use App\Http\Middleware\admin\AdminMiddleware;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//userRoutes
Route::get("/", [HomeController::class,"index"])->name("home");
Route::post("/add/comment",[CommentController::class,"addComment"])->name("add.comment");
Route::get("/shop", [ShopController::class, "index"])->name("shop");
Route::get("/shop/search", [ShopController::class,"search"])->name("shop.search");
//admin routes
Route::middleware(["auth", AdminMiddleware::class])
    ->prefix("/admin")
    ->name("admin")
    ->group(function (){
        Route::get("", [\App\Http\Controllers\admin\CommentController::class, "index"]);
        Route::post("/comment/{comment}",[\App\Http\Controllers\admin\CommentController::class, "toggleCommentStatus"])->name(".comment");
        Route::post("/comment/delete/{comment}",[\App\Http\Controllers\admin\CommentController::class,"deleteComment"])->name(".comment.delete");
        Route::get("/comment/filter", [\App\Http\Controllers\admin\CommentController::class, "filterComments"])->name(".comment.filter");

        Route::get("/shop",[\App\Http\Controllers\admin\ShopController::class,"index"])->name(".shop");
        Route::post("/shop/delete/{product}", [\App\Http\Controllers\admin\ShopController::class,"deleteProduct"])->name(".shop.delete");
    });

Auth::routes();


