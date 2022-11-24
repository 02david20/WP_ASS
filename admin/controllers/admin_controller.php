<?php
require_once('controllers/base_controller.php');
require_once('models/User.php');
require_once('models/Product.php');
class AdminController extends BaseController
{
  function __construct()
  {
    $this->folder = 'admin';
  }

  public function home()
  {
    $users = User::all();
    $products = Product::all();

    $data = ['users'=>$users, 'products'=>$products];
    $this->render('home', $data);
  }

  public function error()
  {
    $this->render('error');
  }
}