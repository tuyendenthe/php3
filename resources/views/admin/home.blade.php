@extends('admin.layouts.master')
@section('title')
<h1>Danh Mục Tin Tức</h1>
@endsection
@section('content')
    <h1><a href="{{ route('dtr.add') }}" class="btn btn-primary m-5"> Thêm Danh Mục</a> </h1>
        <table class="table m-5">
            <thead>
                <tr>
                    <td>ID</td>
                    <td>Tên Danh Mục Tin Tức</td>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $item)


                <tr>
                    <td>{{ $item->id }}</td>
                    <td>{{ $item->nameDirectory }}</td>
                    <td>
                        <a href="{{ route('dtr.update',$item->id) }}" class="btn btn-primary"> Sửa Danh Mục</a>
                        <a href="{{ route('dtr.destroy',$item->id) }}" class="btn btn-primary"> Xóa Danh Mục</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
@endsection
