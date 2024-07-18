@extends('client.layouts.master')

@section('content')

    <div class=" " style="width: 90%;">
        <div>

        <h2>{{ $post->title }}</h2>
        <p>{{ $post->body1 }}</p>
             <img src="{{ $post->img }}" alt="">
            <p>
                {{ $post->body1 }}
            </p>
        </div>
        <div class="ms-5">
    <h3>Bài viết liên quan</h3>
    @foreach ($lienquan as $item)

    <div class="border">
        <div class="m-1 mt-2 ms-3">
            <div class="d-flex">
                <img src="https://th.bing.com/th/id/OIP.cUuD1xJjJQkcjfkbOkrF8QHaE_?rs=1&pid=ImgDetMain"
                    alt="" height="150px" width="150px">
                <div class="m-2">
                    <h5 class="m-1">{{ $item->title }}</h5>
                    <p>
                        chuyện kể về 1 anh chàng nghèo bất ngờ xuyên không thành hoàng tử chỉ biết
                        chơi
                        bời và cái kết

                    </p>
                </div>
            </div>
            <div class="container d-flex justify-content-center align-items-center">
                <button class="btn btn-primary  justify-content-center">Xem thêm</button>
            </div>
        </div>
    </div>

    @endforeach
</div>
    </div>



@endsection
