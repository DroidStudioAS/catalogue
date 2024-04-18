<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ShopController;
use App\Http\Middleware\admin\AdminMiddleware;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\CommentController  as AdminCommentController;
use App\Http\Controllers\admin\ShopController as AdminShopController;

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
//user routes
Route::get("/", [HomeController::class,"index"])->name("home");
Route::post("/comment/add",[CommentController::class,"addComment"])->name("add.comment");
Route::get("/comments/all/{product}",[CommentController::class,"viewAllComments"])->name("comment.view");
Route::controller(ShopController::class)
    ->name("shop")
    ->prefix("/shop")
    ->group(function (){
        Route::get("", "index");
        Route::get("/search", "search")->name(".search");
    });

//admin routes
Route::middleware(["auth", AdminMiddleware::class])
    ->prefix("/admin")
    ->name("admin")
    ->group(function (){
        Route::controller(AdminCommentController::class)
        ->prefix("/comment")
        ->name(".comment")
        ->group(function (){
            Route::get("", "index");
            Route::get("/filter","filterComments")->name(".filter");

            Route::post("/{comment}","toggleCommentStatus")->name(".toggle");
            Route::post("/delete/{comment}","deleteComment")->name(".delete");
        });

        Route::controller(AdminShopController::class)
            ->prefix("/shop")
            ->name(".shop")
            ->group(function (){
                Route::get("","index");
                Route::get("/edit-page/{product}","pushToEditPage")->name(".push.edit");
                Route::get("/add-page","pushToAddPage")->name(".push.add");

                Route::post("/delete/{product}", "deleteProduct")->name(".delete");
                Route::post("/add","addProduct")->name(".add");
                Route::post("/edit/{product}","editProduct")->name(".edit");
            });


    });

Auth::routes();


