@extends('admin.layouts.master')
@section('title')
<h1>Sửa Tin Tức</h1>
@endsection
@section('content')
<div class="m-5">
<form action="{{ route('admin.edit') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label for="title">Tiêu Đề</label>
        <input type="text" class="form-control" id="title" name="title" value="{{ $post->title }}" required>
    </div>
    <div class="form-group">
        <label for="body1">Nội Dung 1</label>
        <textarea class="form-control" id="body1" name="body1" rows="4" value="{{ $post->body1 }}" required></textarea>
    </div>
    <div class="form-group">
        <label for="body2">Nội Dung 2</label>
        <textarea class="form-control" id="body2" name="body2" rows="4" value="{{ $post->body2 }}" required></textarea>
    </div>
    <div class="form-group">
        <img src="{{ \Storage::url($post->img) }}" alt="" width="100px">
        <label for="img" >Hình Ảnh</label>
        <input type="file" class="form-control-file" id="img" name="img">
    </div>
    <div class="form-group">
        <label for="idDirectory">Danh Mục</label>
        <select class="form-control" id="idDirectory" name="idDirectory" required>
            @foreach($data as  $item)
                <option value="{{ $item->id }}"{{ $post->idDirectory == $item->id ? 'selected' : '' }}>{{ $item->nameDirectory }}</option>
            @endforeach
        </select>
    </div>
    <button type="submit" class="btn btn-primary mt-3">Sửa</button>
</form>
</div>
@endsection
