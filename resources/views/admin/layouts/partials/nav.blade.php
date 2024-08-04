<div class="container">
    <div class="jumbotron mt-3">
        <h1 class="display-4">Trang Quản Lý Admin</h1>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <a class="navbar-brand" href="#">Quản Lý</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('admin.home') }}" id="danh-muc">Danh Mục</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('admin.list') }}" id="tin-tuc">Tin Tức</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('admin.home') }}" id="tin-tuc">Người dùng</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
