<!DOCTYPE html>
<html lang="en">

<head>
    <title>Title</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

   @include('client.layouts.partials.header')
</head>

<body>
    <header>
        @include('client.layouts.partials.nav')

    </header>
    <main>
        <div>
        @include('client.layouts.partials.top')
        <div class="ms-5 d-flex">
        @yield('content')
        @include('client.layouts.partials.topBar')
        </div>
        </div>
    </main>
    <footer class="bg-primary text-white mt-5">

    </footer>
    @include('client.layouts.partials.js')
</body>

</html>
