<?php
require_once(ADMIN_PATH.'controllers/base_controller.php');
require_once(ADMIN_PATH.'models/User.php');
require_once(ADMIN_PATH.'models/Product.php');
class AdminController extends BaseController
{
  function __construct()
  {
    $this->folder = 'admin';
  }

  public function home()
  {
    $users_res = User::all();
    $products = Product::all();

    $data = ['users'=>$users_res, 'products'=>$products];
    $this->render('home', $data);
  }

  public function error()
  {
    $this->render('error');
  }
}