<?php
require_once('../lib/connection.php');
require_once ('../lib/config.php');
session_start();
$_SESSION['auth'] = true;
$_SESSION['id'] = 220001;
$_SESSION['avatar'] = 'admin.jpg';
// index.php?controller=home&action=index 
if (isset($_GET['controller'])) {
  $controller = $_GET['controller'];
  if (isset($_GET['action'])) {
    $action = $_GET['action'];
  } else {
    $action = 'index';
  }
} else {
  $controller = 'admin';
  $action = 'home';
}

require_once('routes.php');