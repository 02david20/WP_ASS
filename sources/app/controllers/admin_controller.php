<?php
require_once('controllers/base_controller.php');

class AdminController extends BaseController
{
  function __construct()
  {
    $this->folder = 'admin';
  }

  public function home()
  {
    $data = array(
      'name' => 'Sang Beo',
      'age' => 22
    );
    $this->render('home', $data);
  }

  public function error()
  {
    $this->render('error');
  }
}