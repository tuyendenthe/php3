<div class="border ms-3">
    <div class="m-3">
        <h3>Tìm kiếm</h3>
        <form action="{{ route('search') }}" method="GET" class="widget-search" >
            <div class="d-flex">
                
                <input class="form-control me-2" id="search-query" name="search" type="search" placeholder="Tìm kiếm">
                <button class="btn btn-info">Tìm kiếm</button>
            </div>
            <h3 class="mt-2">Danh mục tin tức</h3>

            <ul>
                @foreach ($list as $item)


                <li><a class="text-dark text-decoration-none" href="{{ route('post.directory', $item->id) }}">

                        <h5>{{ $item->nameDirectory }}</h5>
                    </a></li>
 @endforeach
            </ul>


    </div>
</div>
