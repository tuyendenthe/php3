<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\directory;
use App\Models\posts;
use Illuminate\Support\Facades\DB;

class DirectorysController extends Controller
{
    public function home()
    {
        $data = DB::table('directorys')->latest('id')->get();

        return view('admin.home', compact('data'));
    }
    public function add()
    {


        return view('admin.addDirectorys');
    }
    public function destroy($id)
    {
        $data = DB::table('directorys')->latest('id')->get();
        DB::table('directorys')->delete($id);

        return redirect()->route('admin.home')->with('success', 'Danh mục tin tức đã được thêm thành công!');
    }
    public function update($id)
    {
        $data = DB::table('directorys')->where('id', $id)->first();

        return view('admin.updateDirectorys', compact('data'));
    }
    public function edit(Request $request, $id)
    {
        $request->validate([
            'nameDirectory' => 'required|string|max:255',
        ]);

        DB::table('directories')
            ->where('id', $id)
            ->update([
                'nameDirectory' => $request->nameDirectory,
                'updated_at' => now(),
            ]);

        return redirect()->route('directory.edit', $id)->with('success', 'Danh mục tin tức đã được cập nhật thành công!');
    }
    public function  store(Request $request)
    {
        $request->validate([
            'nameDirectory' => 'required|string|max:255',
        ]);
        DB::table('directorys')->insert([
            'nameDirectory' => $request->nameDirectory,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect()->route('admin.home')->with('success', 'Danh mục tin tức đã được thêm thành công!');
    }
}
