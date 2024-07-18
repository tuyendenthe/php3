<?php

namespace App\Http\Controllers;

use App\Models\directory;
use App\Models\posts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


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

}
