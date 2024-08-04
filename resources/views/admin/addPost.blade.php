@extends('admin.layouts.master')
@section('title')
<h1>Thêm Tin Tức</h1>
@endsection
@section('content')
<div class="m-5">
<form action="{{ route('admin.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label for="title">Tiêu Đề</label>
        <input type="text" class="form-control" id="title" name="title" required>
    </div>
    <div class="form-group">
        <label for="body1">Nội Dung 1</label>
        <textarea class="form-control" id="body1" name="body1" rows="4" required></textarea>
    </div>
    <div class="form-group">
        <label for="body2">Nội Dung 2</label>
        <textarea class="form-control" id="body2" name="body2" rows="4" required></textarea>
    </div>
    <div class="form-group">
        <label for="img">Hình Ảnh</label>
        <input type="file" class="form-control-file" id="img" name="img">
    </div>
    <div class="form-group">
        <label for="idDirectory">Danh Mục</label>
        <select class="form-control" id="idDirectory" name="idDirectory" required>
            @foreach($directorys as  $item)
                <option value="{{ $item->id }}">{{ $item->nameDirectory }}</option>
            @endforeach
        </select>
    </div>
    <button type="submit" class="btn btn-primary mt-3">Thêm</button>
</form>
</div>
@endsection
