<div class="d-flex">
    <div class="m-5 row-3 w-50">
        <h2>Tin nổi bật</h2>
        <img src="{{ \Storage::url($top->img) }}"
            alt="" width="700px">
        <a class="text-decoration-none" href="{{ route('post.detail', $top->id) }}"> <h3>{{ $top->title }}</h3></a>




    </div>
    <div class="m-5 row-5">
        <h2>Tin mới nhất</h2>
        <div>
            @foreach ($top_left as $item)


            <div class="border mb-3">
                <div class="m-1 mt-2 ms-3">
                    <div class="d-flex">
                        <img src="{{ \Storage::url($item->img) }}"
                            alt="" height="150px" width="150px">
                        <div class="m-2">
                            <h5 class="m-1">{{ $item->title}}</h5>
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
</div>
