<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!--JQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="{{asset("/css/main.css")}}">
    <title>@yield("title", "Catalogue")</title>
</head>
<body>
@include("reusable.header")
<div class="content_container">
    @yield("content")
</div>
@include("reusable.footer")

</body>
</html>
