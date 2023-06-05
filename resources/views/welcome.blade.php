<!DOCTYPE html>

<html
    lang="en"
    class="light-style"
    dir="ltr"
    data-theme="theme-default"
    data-assets-path="../assets/"
    data-template="vertical-menu-template-free"
>
<head>
    <meta charset="utf-8" />
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Welcome</title>
    <meta name="description" content="" />
    @include('layouts.frontend.css')
    <link rel="stylesheet" href="{{asset('backend_assets/vendor/css/pages/page-misc.css')}}" />
</head>
<body>
<!-- Content -->

<!--Under Maintenance -->
<div class="container-xxl container-p-y">
    <div class="misc-wrapper">
        <h2 class="mb-2 mx-2">Welcome to Image Uploader !</h2>
{{--        <p class="mb-4 mx-2">Sorry for the inconvenience but we're performing some maintenance at the moment</p>--}}
        <a href="{{route('login')}}" class="btn btn-primary">login</a>
        <div class="mt-4">
            <img
                src="{{asset('backend_assets/img/illustrations/girl-doing-yoga-light.png')}}"
                alt="girl-doing-yoga-light"
                width="500"
                class="img-fluid"
                data-app-dark-img="illustrations/girl-doing-yoga-dark.png"
                data-app-light-img="illustrations/girl-doing-yoga-light.png"
            />
        </div>
    </div>
</div>
@include('layouts.frontend.js')
</body>
</html>
