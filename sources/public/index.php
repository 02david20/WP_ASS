<?php


define('BASE_PATH', '/var/www/html/');

require_once BASE_PATH . 'lib/connection.php';

session_start();

// index.php?controller=pages&action=index 
if (isset($_GET['controller'])) {
    $controller = $_GET['controller'];
    if (isset($_GET['action'])) {
        $action = $_GET['action'];
    } else {
        $action = 'index';
    }
} else {
    $controller = 'pages';
    $action = 'index';
}


/* Load external routes file */
require_once BASE_PATH . 'routes.php';