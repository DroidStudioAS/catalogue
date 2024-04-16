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
    });

Auth::routes();


