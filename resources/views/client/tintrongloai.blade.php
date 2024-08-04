@extends('client.layouts.master')
@section('content')

<div>


    <div>
        @foreach ($post as $item)


        <div class="border">
            <div class="m-1 mt-2 ms-3">
                <div class="d-flex">
                    <img src="{{ \Storage::url($item->img) }}"
                        alt="" height="150px" width="150px">
                    <div class="m-2">
                        <h5 class="m-1">{{ $item->title }}</h5>
                        <p>

                            Giao diện không nhất thiết phải làm giống diện trong link hướng dẫn bên trên.
QUAY video phần code làm được và kết quả chạy trên trình duyệt, thao tác đầy đủ CRUD
                        </p>
                    </div>
                </div>
                <div class="container d-flex justify-content-center align-items-center">

                    <a href="{{ route('post.detail', $item->id) }}" class="btn btn-primary  justify-content-center">Xem thêm </a>
                </div>
            </div>
        </div>
        @endforeach

    </div>

</div>
@endsection

