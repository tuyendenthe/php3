<!DOCTYPE html>
<html lang="en">

<head>
    <title>Title</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

   @include('admin.layouts.partials.header')
</head>

<body>
    <header>
        @include('admin.layouts.partials.nav')

    </header>
    <main>
        <div class="m-5 text-center "> @yield('title')</div>
        <div>


        @yield('content')


        </div>
    </main>
    <footer class="bg-primary text-white mt-5">

    </footer>
    @include('admin.layouts.partials.js')
</body>

</html>
