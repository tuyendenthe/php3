<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\postsController;
use App\Http\Controllers\DirectorysController;
use App\Http\Controllers\authCongtroller;
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





////////////////////////////
Route::get('admin',[DirectorysController::class, 'home'])->name('admin.home');
Route::get('admin/adddtr',[DirectorysController::class, 'add'])->name('dtr.add');
Route::get('admin/destroydtr/{id}',[DirectorysController::class, 'destroy'])->name('dtr.destroy');
Route::get('admin/updatedtr/{id}',[DirectorysController::class, 'update'])->name('dtr.update');
Route::post('/admin/dtrstore', [DirectorysController::class, 'store'])->name('dtr.store');
Route::post('/admin/dtredit', [DirectorysController::class, 'store'])->name('dtr.edit');
////////////////////////////////////////////////////////////
Route::get('admin/list',[postsController::class, 'list'])->name('admin.list');
Route::get('admin/add',[postsController::class, 'add'])->name('admin.add');
Route::get('admin/destroy/{id}',[postsController::class, 'destroy'])->name('admin.destroy');
Route::get('admin/update/{id}',[postsController::class, 'update'])->name('admin.update');
Route::post('/admin/store', [postsController::class, 'store'])->name('admin.store');
Route::post('/admin/edit', [postsController::class, 'store'])->name('admin.edit');
/////////////////////////////////////////////////////////////////////////
Route::get('/register', function () {
    return view('register');
});
Route::post('register', [authCongtroller::class, 'register'])->name('register') ;

Route::get('login', function () {
    return view('login');
})->name('login');

Route::post('login', [authCongtroller::class, 'login']);
Route::post('logout', [authCongtroller::class, 'logout']);

Route::get('/dashboard', function ( ) {
  session()->flash('status', 'Đăng nhập thành công!');
    if (auth()->user()->type == 'admin') {
        return redirect('/admin');
    }
    return redirect('/');

})->middleware('auth');

