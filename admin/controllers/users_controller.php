<?php
require_once('controllers/base_controller.php');
require_once('models/User.php');
class UsersController extends BaseController
{
  function __construct()
  {
    $this->folder = 'users';
  }

  public function home()
  {
    $users = User::all();
    $data = array('user' => $users);
    $this->render('home', $data);
  }

  public function error()
  {
    $this->render('error');
  }
}