<!-- add product -->
<?php
// If the user clicked the add to cart button on the product page we can check for the form data
if (isset($_POST['product_id'], $_POST['quantity']) && is_numeric($_POST['product_id']) && is_numeric($_POST['quantity'])) {
  // Set the post variables so we easily identify them, also make sure they are integer
  $product_id = (int) $_POST['product_id'];
  $quantity = (int) $_POST['quantity'];
  // Prepare the SQL statement, we basically are checking if the product exists in our databaser
  $stmt = $pdo->prepare('SELECT * FROM products WHERE id = ?');
  $stmt->execute([$_POST['product_id']]);
  // Fetch the product from the database and return the result as an Array
  $product = $stmt->fetch(PDO::FETCH_ASSOC);
  // Check if the product exists (array is not empty)
  if ($product && $quantity > 0) {
    // Product exists in database, now we can create/update the session variable for the cart
    if (isset($_SESSION['cart']) && is_array($_SESSION['cart'])) {
      if (array_key_exists($product_id, $_SESSION['cart'])) {
        // Product exists in cart so just update the quanity
        $_SESSION['cart'][$product_id] += $quantity;
      } else {
        // Product is not in cart so add it
        $_SESSION['cart'][$product_id] = $quantity;
      }
    } else {
      // There are no products in cart, this will add the first product to cart
      $_SESSION['cart'] = array($product_id => $quantity);
    }
  }
  // Prevent form resubmission...
  header('location: index.php?page=cart');
  exit;
}

// Remove product from cart, check for the URL param "remove", this is the product id, make sure it's a number and check if it's in the cart
if (isset($_GET['remove']) && is_numeric($_GET['remove']) && isset($_SESSION['cart']) && isset($_SESSION['cart'][$_GET['remove']])) {
  // Remove the product from the shopping cart
  unset($_SESSION['cart'][$_GET['remove']]);
}

// Update product quantities in cart if the user clicks the "Update" button on the shopping cart page
if (isset($_POST['update']) && isset($_SESSION['cart'])) {
  // Loop through the post data so we can update the quantities for every product in cart
  foreach ($_POST as $k => $v) {
    if (strpos($k, 'quantity') !== false && is_numeric($v)) {
      $id = str_replace('quantity-', '', $k);
      $quantity = (int) $v;
      // Always do checks and validation
      if (is_numeric($id) && isset($_SESSION['cart'][$id]) && $quantity > 0) {
        // Update new quantity
        $_SESSION['cart'][$id] = $quantity;
      }
    }
  }
  // Prevent form resubmission...
  header('location: index.php?page=cart');
  exit;
}

// Send the user to the place order page if they click the Place Order button, also the cart should not be empty
if (isset($_POST['order']) && isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
  header('Location: index.php?page=order');
  exit;
}

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
?>

<?= template_header('Cart') ?>

  <!-- shopping cart -->
  <section class="p-3" style="background-color: #d2c9ff;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <nav
          style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;); padding-top:60px"
          aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Shopping cart</li>
          </ol>
        </nav>
        <!--  form -->
        <form action="index.php?page=cart" method="post">

          <div class="col-12">
            <div class="card card-registration card-registration-2" style="border-radius: 15px;">

              <div class="card-body p-0">
                <div class="row g-0">
                  <div class="col-lg-8">

                    <div class="p-5">
                      <div class="d-flex justify-content-between align-items-center mb-5">
                        <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
                        <h6 class="mb-0 text-muted">
                          <?php echo $num_items_in_cart ?> items
                        </h6>
                      </div>
                      <!-- src -> ... alt -> ... Shirt->.. -->
                      <hr class="my-4">


                      <?php if (empty($products)): ?>
                      <h6 class="mb-0 text-muted">No added products</h6>
                      <?php else: ?>
                      <?php foreach ($products as $product): ?>
                      <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-md-2 col-lg-2 col-xl-2">
                          <a href="index.php?page=product&id=<?= $product['id'] ?>">
                            <img src="<?php echo $product['image']; ?>" class="img-fluid rounded-3"
                              alt="<?php echo $product['name']; ?>">
                          </a>

                        </div>
                        <div class="col-md-3 col-lg-3 col-xl-2">
                          <a href="index.php?page=product&id=<?= $product['id'] ?>">
                            <h6 class="text-black mb-0">
                              <?php echo $product['name']; ?>
                            </h6>
                          </a>
                          <p><span class="text-muted">Size: </span>... <br><span class="text-muted">Color: </span>...
                          </p>
                          <a href="index.php?page=cart&remove=<?= $product['id'] ?>" class="remove">Remove</a>
                        </div>
                        <!-- quantity
                        <div class="col-md-3 col-lg-3 col-xl-3 d-flex">
                          <button class="btn btn-link px-2"
                            onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                            <i class="fas fa-minus"></i>
                          </button>

                          <input id="form1" min="0" name="quantity" value="1" type="number"
                            class="form-control form-control-sm" />

                          <button class="btn btn-link px-2"
                            onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                            <i class="fas fa-plus"></i>
                          </button>
                        </div>
                        -->
                        <div class="col-md-3 col-lg-3 col-xl-1 d-flex">
                          <input type="number" name="quantity-<?= $product['id'] ?>"
                            value="<?= $products_in_cart[$product['id']] ?>" min="1" max="10" placeholder="Quantity"
                            required>
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-1 ">
                            <?php echo $product['price']; ?>
                        </div>

                        <div class="col-md-1 col-lg-1 col-xl-2 text-end">
                          <?= $product['price'] * $products_in_cart[$product['id']] ?>
                        </div>

                      </div>

                      <hr class="my-4">

                      <?php endforeach; ?>
                      <?php endif; ?>





                      <div class="pt-5">
                        <h6 class="mb-0"><a href="index.php?page=men" class="text-body"><i
                              class="fas fa-long-arrow-alt-left me-2"></i>Back to shop</a></h6>
                      </div>
                    </div>
                  </div>

                  <div class="col-lg-4 bg-grey">
                    <div class="p-5">
                      <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                      <hr class="my-4">

                      <!-- total price-->
                      <div class="d-flex justify-content-between mb-4">
                        <h5 class="text-uppercase">
                          <?php echo $num_items_in_cart ?> items
                        </h5>
                        <h5>
                          <?php echo $subtotal; ?>
                        </h5>
                      </div>



                      <h5 class="text-uppercase mb-3">Give code</h5>

                      <div class="mb-5">
                        <div class="form-outline">
                          <input type="text" id="form3Examplea2" class="form-control form-control-lg" />
                          <label class="form-label" for="form3Examplea2">Enter your code</label>
                        </div>
                      </div>

                      <hr class="my-4">

                      <div class="d-flex justify-content-between mb-5">
                        <h5 class="text-uppercase">Total price</h5>
                        <h5>
                          <?php echo $subtotal; ?>
                        </h5>
                      </div>

                      <input type="submit" class="btn btn-dark btn-block btn-lg" value="Update" name="update">
                      <input type="submit" class="btn btn-dark btn-block btn-lg" value="Order" name="order">

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>
        <!-- end form -->

      </div>
    </div>
  </section>

  <!-- end of shopping cart -->

  <?= template_footer() ?>