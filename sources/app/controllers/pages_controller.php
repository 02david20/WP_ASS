<?php
require_once('base_controller.php');
require_once('models/User.php');

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
    $this->render('register', [], 'form');
  }

  public function login()
  {
    if (isset($__SESSION['id'])) {
      header('Location: index.php?controller=pages&action=home');
      exit();
    }

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      if (isset($_POST['username']) && isset($_POST['password'])) {
        $conn = Db::getInstance();

        $sql = "SELECT * FROM `user` WHERE username=? and `password`=?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $_POST['username'], $_POST['password']);
        $stmt->execute();

        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
          $user = $result->fetch_assoc();

          session_start();

          $__SESSION['id'] = $user['id'];
          $__SESSION['fullname'] = $user['fullname'];
          $__SESSION['username'] = $user['username'];
          $__SESSION['password'] = $user['password'];
          $__SESSION['role'] = $user['role'];
          $__SESSION['avatar'] = $user['avatar'];

          // header('Location: index.php?controller=pages&action=index');
          // exit();
        } else {
          echo '<script>alert("Sai tên đăng nhập hoặc mật khẩu")</script>';
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