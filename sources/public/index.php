<?php



// define('BASE_PATH', '/var/www/html/');
define('BASE_PATH', '../');

require_once BASE_PATH . 'lib/connection.php';
require_once BASE_PATH . 'lib/config.php';
require_once BASE_PATH . 'lib/helper.php';

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
    $controller = 'products';
    $action = 'home';
}



/* Load external routes file */
require_once USER_PATH . 'routes.php';