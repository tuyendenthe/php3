<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
    crossorigin="anonymous">
</head>
<body>
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <div class="d-flex">
    <div class="m-5" >
        <h1>Đăng nhập</h1>
    <form action="/login" method="POST">
        @csrf
        <label class="m-1" for="email">Email:</label>
        <input class="m-1 form-control" type="email" name="email" id="email" required >  <br>
        <label class="m-1" for="password">Password:</label>
        <input  class="m-1 form-control"type="password" name="password" id="password" required>  <br>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
    <h6>Bạn chưa có tài khoản ? <a href="{{ route('register') }}">Đăng ký</a></h6>
</div>
<div>


</div>
</div>
</body>
<script
src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
crossorigin="anonymous"
></script>

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
crossorigin="anonymous"
></script>
</html>
