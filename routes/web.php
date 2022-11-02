<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application.
|
*/

$request = $_SERVER['REQUEST_URI'];

switch ($request) {

    case '':
    case '/':
        require __DIR__.'/../resources/views/home/index.php';
        break;

    case '/login':
        require __DIR__.'/../resources/views/home/login.php';
        break;

    case '/register':
        require __DIR__.'/../resources/views/home/register.php';
        break;

    default:
        http_response_code(404);
        require __DIR__.'/../resources/views/error/404.php';
        break;
}
