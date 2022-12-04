<?php
// Các controllers trong hệ thống và các action có thể gọi ra từ controller đó.
$controllers = array(
  'pages' => ['home', 'page_404', 'page_403', 'login', 'register', 'about', 'contact', 'logout', 'user'],
  'posts' => ['home', 'single'],
  'products' => ['cate1', 'cate2', 'cate3', 'cart', 'product', 'order'],
  'users' => ['updateUser']
);

///////////////////////////////////////////////////////////////////////////////////////////////////
// Nếu các tham số nhận được từ URL không hợp lệ (không thuộc list controller và action có thể gọi
// thì trang báo lỗi sẽ được gọi ra.
if (!array_key_exists($controller, $controllers) || !in_array($action, $controllers[$controller])) {
  $controller = 'pages';
  $action = 'page_404';
}

// Nhúng file định nghĩa controller vào để có thể dùng được class định nghĩa trong file đó
include_once('controllers/' . $controller . '_controller.php');

// Tạo ra tên controller class từ các giá trị lấy được từ URL sau đó gọi ra để hiển thị trả về cho người dùng.
$klass = str_replace('_', '', ucwords($controller, '_')) . 'Controller';
$controller = new $klass;
$controller->$action();