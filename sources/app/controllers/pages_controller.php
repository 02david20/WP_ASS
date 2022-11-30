<?php
require_once('base_controller.php');
require_once(USER_PATH . 'models/User.php');
class PagesController extends BaseController
{
  function __construct()
  {
    $this->folder = 'pages';
  }

  public function index()
  {
    // Chỉ cần truyền vào array => tự trích xuất ra các biến
    // ==> Trong view tương ứng chỉ cần gọi lại những biến đã được truyền vào
    $this->render('index');
  }

  public function register()
  {
    if (isset($_SESSION["user"])) {
      header('Location: index.php?controller=pages&action=index');
      exit();
    }

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      if (isset($_POST['fullname']) && isset($_POST['username']) && isset($_POST['password']) && isset($_POST['re_password'])) {
        if ($_POST['pass'] === $_POST['re_pass']) {
          $user_data = array(
            'username' => escape($_POST['username']),
            'fullname' => escape($_POST['fullname']),
            'password' => escape($_POST['password'])
          );

          User::AddUser($user_data);

          header('Location: index.php?controller=pages&action=login');
          exit();
        } else {
          echo '<script>alert("Mật khẩu không khớp");</script>';
        }
      } else {
        echo '<script>alert("Xin hãy nhập đầy đủ thông tin")</script>';
      }
    }
    $this->render('register', [], 'form');
  }

  public function login()
  {
    if (isset($_SESSION["user"])) {
      header('Location: index.php?controller=pages&action=index');
      exit();
    }

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      if (isset($_POST['username']) && isset($_POST['password'])) {
        login($_POST['username'], $_POST['password']);

        if (isset($_SESSION["user"])) {
          header('Location: index.php?controller=pages&action=index');
          exit();

        } else {
          echo '<script>alert("Sải tên đăng nhập hoặc mật khẩu")</script>';
        }
      } else {
        echo '<script>alert("Xin hãy nhập tên đăng nhập và mật khẩu")</script>';
      }
    }
    $this->render('login', [], 'form');
  }
  public function about()
  {
    $this->render('about');
  }
  public function contact()
  {
    $this->render('contact');
  }

  public function page_404()
  {
    $this->render('page_404');
  }
}