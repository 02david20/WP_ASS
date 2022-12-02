<?php
require_once(USER_PATH . 'controllers/base_controller.php');
require_once(USER_PATH.'models/Product.php');
require_once(USER_PATH.'models/Order.php');
class ProductsController extends BaseController
{
  function __construct()
  {
    $this->folder = 'products';
  }

  public function cate1()
  {
   
    // 
    if (isset($_POST['bestsellers'])) {
      $products_men = Product::select_1_1();
    }
    else if (isset($_POST['onsale'])) {
      $products_men = Product::select_1_3();
    }
    else if (isset($_POST['newarrival'])) {
      $products_men = Product::select_1_2();
    }
    else {
      $products_men = Product::select_1();
    }    
    $data = array('products' => $products_men);
    $this->render('products', $data);
  }
  public function cate2()
  {
   
    // 
    $products_women = Product::select_2();
    $data = array('products' => $products_women);
    $this->render('products', $data);
  }

  public function cate3()
  {
   
    // 
    $products_kid = Product::select_3();
    $data = array('products' => $products_kid);
    $this->render('products', $data);
  }

  public function product()
  {
   
    // 
    if (isset($_GET['id'])) {
      $product_with_id = Product::select_product_by_id($_GET['id']);
      $data = array('product' => $product_with_id);
      $this->render('product', $data);
    }
    else {
      //exit('Product does not exist!');
    }
  }
  public function cart()
  {
    if (isset($_POST['product_id'], $_POST['quantity']) && is_numeric($_POST['product_id']) && is_numeric($_POST['quantity'])) {
      $product_id = (int) $_POST['product_id'];
      $quantity = (int) $_POST['quantity'];
      
      $product = Product::select_product_by_id($_POST['product_id']);
      
      if ($product && $quantity > 0) {
        if (isset($_SESSION['cart']) && is_array($_SESSION['cart'])) {
          if (array_key_exists($product_id, $_SESSION['cart'])) {
            $_SESSION['cart'][$product_id] += $quantity;
          } else {
            $_SESSION['cart'][$product_id] = $quantity;
          }
        } else {
          $_SESSION['cart'] = array($product_id => $quantity);
        }
      }
      header('location: index.php?controller=products&action=cart');
    }
    if (isset($_GET['remove']) && is_numeric($_GET['remove']) && isset($_SESSION['cart']) && isset($_SESSION['cart'][$_GET['remove']])) {
      unset($_SESSION['cart'][$_GET['remove']]);
    }

    if (isset($_POST['update']) && isset($_SESSION['cart'])) {
      foreach ($_POST as $k => $v) {
        if (strpos($k, 'quantity') !== false && is_numeric($v)) {
          $id = str_replace('quantity-', '', $k);
          $quantity = (int) $v;
          if (is_numeric($id) && isset($_SESSION['cart'][$id]) && $quantity > 0) {
            $_SESSION['cart'][$id] = $quantity;
          }
        }
      }
      header('location: index.php?controller=products&action=cart');
      exit;
    }

    // Send the user to the place order page if they click the Place Order button, also the cart should not be empty
    if (isset($_POST['order']) && isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
      // orderbutton 
      //header('Location: index.php?page=order');
      exit;
    }

    $products_in_cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : array();
    $products = array();
    $subtotal = 0.00;
    if ($products_in_cart) {
      
      $products = Product::select_products_in_cart($products_in_cart);
      // Calculate the subtotal
      foreach ($products as $product) {
        $subtotal += (float) $product['price'] * (int) $products_in_cart[$product['id']];
      }
    }
    // Get the amount of items in the shopping cart, this will be displayed in the header.
    $num_items_in_cart = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;

    $data = array('products' => $products, 
                  'products_in_cart' => $products_in_cart, 
                  'num_items_in_cart' => $num_items_in_cart,
                  'subtotal' => $subtotal);
    $this->render('cart', $data);
  }
  public function order() {
    // Check the session variable for products in cart
    $products_in_cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : array();
    $products = array();
    $subtotal = 0.00;
    if ($products_in_cart) {      
      $products = Product::select_products_in_cart($products_in_cart);
      foreach ($products as $product) {
        $subtotal += (float) $product['price'] * (int) $products_in_cart[$product['id']];
      }
    }
    $num_items_in_cart = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
    $user_id = $_SESSION['id'];
    $note = '';
    $order_id = (int)Order::new_order_id() + 1;
    $order_date = '2022-11-28 18:59:59';

    Order::insert_into_order($order_id, $user_id, $note, $order_date, $subtotal);

    foreach ($products as $product) {
        // $sql = "INSERT INTO orderdetails (order_id, product_id, price, amount, total) VALUES (?,?,?,?,?)";
        // $stmt = $pdo->prepare($sql);
        
        $detail_id = Order::new_orderdetails_id() + 1;
        $product_id = $product['id'];
        $price = $product['price'];
        $amount = $products_in_cart[$product['id']];
        $total = $product['price'] * $products_in_cart[$product['id']];
        // $stmt->execute([$order_id, $product_id, $price, $amount, $total]);
        Order::insert_into_orderdetails($detail_id, $order_id, $product_id, $price,$amount,$total);
    }

    $products = array();
    $products_in_cart = array();
    $_SESSION['cart'] = array();
  }
  
}