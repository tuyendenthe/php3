<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
</head>
<body>
    <form action="/register" method="POST">
        @csrf
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required> <br>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required> <br>
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required> <br>
    

        <button type="submit">Đăng ký</button>
    </form>
</body>
</html>
