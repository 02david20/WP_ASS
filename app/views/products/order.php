<?php
// get products from db
// Check the session variable for products in cart
$products_in_cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : array();
$products = array();
$subtotal = 0.00;
// If there are products in cart
if ($products_in_cart) {
  // There are products in the cart so we need to select those products from the database
  // Products in cart array to question mark string array, we need the SQL statement to include IN (?,?,?,...etc)
  $array_to_question_marks = implode(',', array_fill(0, count($products_in_cart), '?'));
  $stmt = $pdo->prepare('SELECT * FROM products WHERE id IN (' . $array_to_question_marks . ')');
  // We only need the array keys, not the values, the keys are the id's of the products
  $stmt->execute(array_keys($products_in_cart));
  // Fetch the products from the database and return the result as an Array
  $products = $stmt->fetchAll(PDO::FETCH_ASSOC);
  // Calculate the subtotal
  foreach ($products as $product) {
    $subtotal += (float) $product['price'] * (int) $products_in_cart[$product['id']];
  }
}
// Get the amount of items in the shopping cart, this will be displayed in the header.
$num_items_in_cart = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
/*
// add $products (product in table added) & $products_in_cart (quantity) 
// to 'order' (1) and 'orderdetails' (quantity)
// 'order': 
id: ...
user_id: random 
note, order_date, 
total: $subtotal
// 'orderdetails': 
id: ..., 
order_id: ..., 
product_id: $product['id], 
price: $product['price'], 
amount: $products_in_cart[$product['id']], 
total: multiply
*/
$user_id = 123;
$note = '';
$order_id = 5;
$order_date = '2022-11-25 18:59:59';
echo $subtotal;
$sql = "INSERT INTO shop.order (id, user_id, note, order_date, total) VALUES ($order_id, 1, 'note', '$order_date', $subtotal)";
$stmt = $pdo->prepare($sql);
$stmt->execute();

foreach ($products as $product) {
    $sql = "INSERT INTO orderdetails (order_id, product_id, price, amount, total) VALUES (?,?,?,?,?)";
    $stmt = $pdo->prepare($sql);
    
    $product_id = $product['id'];
    $price = $product['price'];
    $amount = $products_in_cart[$product['id']];
    $total = $product['price'] * $products_in_cart[$product['id']];
    $stmt->execute([$order_id, $product_id, $price, $amount, $total]);
}

$products = array();
$products_in_cart = array();
session_destroy();
session_start();
?>

<?= template_header('Order') ?>

    <div class="mt-5 py-5">
        <h1>Your Order Has Been Placed</h1>
        <p>Thank you for ordering with us, we'll contact you by email with your order details.</p>
    </div>

    <?= template_footer() ?>