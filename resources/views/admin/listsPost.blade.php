@extends('admin.layouts.master')
@section('title')
<h1>Tin Tức</h1>
@endsection
@section('content')
    <h1><a href="{{ route('admin.add') }}" class="btn btn-primary m-5"> Thêm Danh Mục</a> </h1>
        <table class="table m-5">
            <thead>
                <tr>
                    <td>ID</td>
                    <td>Tên Tin Tức</td>
                    <td>Ảnh Tin Tức</td>

                </tr>
            </thead>
            <tbody>
                @foreach ($data as $item)


                <tr>
                    <td>{{ $item->id }}</td>
                    <td>{{ $item->title }}</td>



                    <td><img src="{{ \Storage::url($item->img) }} " alt="" width="100px"></td>
                    <td>
                        <a href="{{ route('admin.update',$item->id) }}" class="btn btn-primary"> Sửa Danh Mục</a>
                        <a href="{{ route('admin.destroy',$item->id) }}" class="btn btn-primary"> Xóa Danh Mục</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
@endsection
