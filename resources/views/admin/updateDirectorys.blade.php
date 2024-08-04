@extends('admin.layouts.master')
@section('title')
<h1>Sửa Danh Mục Tin Tức</h1>
@endsection
@section('content')
<div class="m-5">
<form action="{{ route('dtr.edit') }}" method="POST">
    @csrf
    <div class="form-group">
        <label for="nameDirectory">Tên Danh Mục</label>
        <input type="text" class="form-control" id="nameDirectory" name="nameDirectory" value="{{ $data->nameDirectory }}" required>
    </div>
    <button type="submit" class="btn btn-primary">Sửa</button>
</form>
</div>
@endsection
