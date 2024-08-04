<?php

namespace App\Http\Controllers;

use App\Models\directory;
use App\Models\posts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;


class postsController extends Controller
{
    public function home()
    {
        $data = posts::query()->latest('id')->get();
        $top = posts::where('narura', '1')->first();
        $top_left = posts::where('narura', '2')->get();
        $list = DB::table('directorys')->get();
        return view('client.index', compact('data','top_left','top','list'));
    }
    public function post_Detail($id)
    {
        $post = posts::find($id);
        $idDirectory = $post->idDirectory;
        $lienquan = posts::where('idDirectory', $idDirectory)->get();
        $top = posts::where('narura', '1')->first();
        $top_left = posts::where('narura', '2')->get();
        $list = DB::table('directorys')->get();
        return view('client.chitiet', compact('post','top_left','top','list','lienquan'));
    }
    public function posts_directory($id)
    {
        $post = posts::where('idDirectory', $id)->get();


        $top = posts::where('narura', '1')->first();
        $top_left = posts::where('narura', '2')->get();
        $list = DB::table('directorys')->get();
        return view('client.tintrongloai', compact('post','top_left','top','list',));
    }
    public function search(Request $request)
    {
        $search = $request->input('search');
        $data = posts::where('title', 'LIKE', '%' . $search . '%')->get();



        $top = posts::where('narura', '1')->first();
        $top_left = posts::where('narura', '2')->get();
        $list = DB::table('directorys')->get();
        return view('client.search', compact('top_left','top','list','data'));
    }
    public function list()
    {
        $data = posts::query()->latest('id')->get();


        return view('admin.listsPost', compact('data'));
    }
    public function add()
    {

        $directorys = DB::table('directorys')->get();

        return view('admin.addPost',compact('directorys'));
    }
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'body1' => 'required|string',
            'body2' => 'required|string',
            'img' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'idDirectory' => 'required|exists:directorys,id',
        ]);

        $imagePath = null;
        if ($request->hasFile('img')) {
            $imagePath = $request->file('img')->store('images', 'public');
        }

        DB::table('posts')->insert([
            'title' => $request->title,
            'body1' => $request->body1,
            'body2' => $request->body2,
            'img' => $imagePath,
            'idDirectory' => $request->idDirectory,
            'dateCreated' => now(),
            'narura' => 1,
            'idTag' => 1,



        ]);

        return redirect()->route('admin.list')->with('success', 'Tin tức đã được thêm thành công!');
    }
    public function destroy($id){
        DB::table('posts')->delete($id);
        $post = DB::table('posts')->where('id', $id)->first();
    if ($post && $post->img) {
        Storage::disk('public')->delete($post->img);
    }



        return redirect()->route('admin.list')->with('success', 'Tin tức đã được thêm thành công!');

    }
    public function update($id){

        $post = DB::table('posts')->where('id', $id)->first();
        $data = DB::table('directorys')->latest('id')->get();
        return view('admin.updatePost',compact('post','data'));





    }
    public function edit(Request $request, $id)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'body1' => 'required|string',
            'body2' => 'required|string',
            'img' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'idDirectory' => 'required|exists:directories,id',
        ]);

        $post = DB::table('posts')->where('id', $id)->first();
        $imagePath = $post->img;

        if ($request->hasFile('img')) {
            // Xóa ảnh cũ nếu có
            if ($imagePath) {
                Storage::disk('public')->delete($imagePath);
            }
            // Lưu ảnh mới
            $imagePath = $request->file('img')->store('images', 'public');
        }

        DB::table('posts')->where('id', $id)->update([
            'title' => $request->title,
            'body1' => $request->body1,
            'body2' => $request->body2,
            'img' => $imagePath,
            'idDirectory' => $request->idDirectory,
            'updated_at' => now(),
        ]);

        return redirect()->route('posts.edit', $id)->with('success', 'Tin tức đã được cập nhật thành công!');
    }



}
