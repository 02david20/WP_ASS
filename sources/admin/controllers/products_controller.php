<?php
require_once('controllers/base_controller.php');
require_once('models/Product.php');
class ProductsController extends BaseController
{
  function __construct()
  {
    $this->folder = 'products';
  }

  public function home()
  {
    $products = Product::all();
    $data = array('products' => $products);
    $this->render('home', $data);
  }

  public function delete() {
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $id = (int)$_POST["id"];
      
        $sql = "DELETE FROM product WHERE id=$id ";

        if(DB::getInstance()->query($sql)) {
            echo json_encode(array('statusCode'=>200));
        } else {
            echo json_encode(array('statusCode'=>400,
                                    'err' => "Error deleting record: ".DB::getInstance()->error,            
            ));
        }
    }  
  }

  
  public function edit() {
    if($_SERVER["REQUEST_METHOD"] == "GET") {
      $product = product::findByID($_GET['id']);
      $product_info = array('product_info'=>$product);
      $this->render('edit',$product_info);
    }  
  }

  public function updateproduct() {
    if($_SERVER["REQUEST_METHOD"] == "POST") {

      if ($_POST['product_id'] <> 0) $editTime = gmdate('Y-m-d H:i:s', time() + 7 * 3600);
      else $editTime = '0000-00-00 00:00:00';
      // Check role 
      if (isset($_POST['role']) && $_SESSION['role'] == 1) $role = $_POST['role'];
      else $role = $_SESSION['role'];
  
      $product_edit = array(
          'id' => intval($_POST['product_id']),
          'email' => escape($_POST['email']),
          'productname' => escape($_POST['productname']),
          'fullname' => escape($_POST['fullname']),
          'address' => escape($_POST['address']),
          'phone_num' => escape($_POST['phone_num']),
          'editTime' => $editTime,
          'role' => $role
      );

      // Check Email
      $email_check = addslashes($_POST['email']);
      $id_check = intval($_POST['product_id']);
      if (
        mysqli_num_rows(DB::getInstance()->query("SELECT email FROM product WHERE email='$email_check'")) != 0 &&
        mysqli_num_rows(DB::getInstance()->query("SELECT email FROM product WHERE id='$id_check' AND email='$email_check'")) <> 1
      ){
          echo "<div style='padding-top: 200' class='container'><div class='alert alert-danger' style='text-align: center;'><strong>NO!</strong> Email này đã có người dùng. Vui lòng chọn Email khác. <a href='javascript: history.go(-1)'>Trở lại</a></div></div>";
          require('?controller=products&action=home');
          exit;
      } else {
          // Update product Info
          $product_id =  Product::Update($product_edit);
          
          // Save Avatar
          $avatar_name = 'avatar-product' . $product_id . '-' . slug($_POST['productname']);

          $config = array(
              'name' => $avatar_name,
              'upload_path'  => "../".PATH_URL_IMG,
              'allowed_exts' => 'jpg|jpeg|png|gif',
          );


          $avatar = upload('avatar', $config);
          //cập nhật ảnh mới
          if ($avatar) {
              $product_edit = array(
                  'id' => $product_id,
                  'avatar' => $avatar
              );
              Product::Update($product_edit);
          }
          header('Location: index.php?controller=products&action=home');
      }
    }  
  }

  public function error()
  {
    $this->render('error');
  }

}