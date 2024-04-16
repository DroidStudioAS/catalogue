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

Route::get("/", [\App\Http\Controllers\HomeController::class,"index"])->name("home");
Route::post("/add/comment",[\App\Http\Controllers\CommentController::class,"addComment"])->name("add.comment");

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index']);
//admin routes
Route::middleware(["auth", \App\Http\Middleware\admin\AdminMiddleware::class])
    ->prefix("/admin")
    ->group(function (){
        Route::get("", [\App\Http\Controllers\admin\CommentController::class, "index"])->name("admin");
        Route::post("/comment/{comment}",[\App\Http\Controllers\admin\CommentController::class, "toggleCommentStatus"])->name("admin.comment");
    });
