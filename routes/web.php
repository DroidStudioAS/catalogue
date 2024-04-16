<?php

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
Route::get("/", [\App\Http\Controllers\HomeController::class,"index"])->name("home");
Route::post("/add/comment",[\App\Http\Controllers\CommentController::class,"addComment"])->name("add.comment");

//admin routes
Route::middleware(["auth", \App\Http\Middleware\admin\AdminMiddleware::class])
    ->prefix("/admin")
    ->name("admin")
    ->group(function (){
        Route::get("", [\App\Http\Controllers\admin\CommentController::class, "index"]);
        Route::post("/comment/{comment}",[\App\Http\Controllers\admin\CommentController::class, "toggleCommentStatus"])->name(".comment");
    });

Auth::routes();


