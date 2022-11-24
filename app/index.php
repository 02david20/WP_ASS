<?php
require_once('../lib/connection.php');
require_once ('../lib/config.php');

// index.php?controller=home&action=index 
if (isset($_GET['controller'])) {
  $controller = $_GET['controller'];
  if (isset($_GET['action'])) {
    $action = $_GET['action'];
  } else {
    $action = 'index';
  }
} else {
  $controller = 'pages';
  $action = 'home';
}

require_once('routes.php');