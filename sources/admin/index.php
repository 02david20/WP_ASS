<?php
session_start();

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

require_once(ADMIN_PATH.'routes.php');