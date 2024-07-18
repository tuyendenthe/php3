<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\postsController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/',[postsController::class, 'home']);
Route::get('post/{id}', [postsController::class, 'post_Detail'])->name('post.detail');
Route::get('directory/{id}', [postsController::class, 'directory'])->name('post.directory');
Route::get('posts_directory/{id}', [postsController::class, 'posts_directory'])->name('post.directory');
Route::get('/search', [postsController::class, 'search'])->name('search');
