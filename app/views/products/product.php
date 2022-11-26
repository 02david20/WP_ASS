<?php
// Check to make sure the id parameter is specified in the URL
if (isset($_GET['id'])) {
    // Prepare statement and execute, prevents SQL injection
    $stmt = $pdo->prepare('SELECT * FROM products WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    // Fetch the product from the database and return the result as an Array
    $product = $stmt->fetch(PDO::FETCH_ASSOC);
    // Check if the product exists (array is not empty)
    if (!$product) {
        // Simple error to display if the id for the product doesn't exists (array is empty)
        exit('Product does not exist!');
    }
} else {
    // Simple error to display if the id wasn't specified
    exit('Product does not exist!');
}
?>

<?=template_header('Product')?>

<!-- details -->
    <section class = "p-3">
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;); padding-top:100px" aria-label="breadcrumb">
                              <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><?php echo $product['name']?></li>
                              </ol>
                        </nav>
            <div class="col-md-8 col-sm-12" >
                <div class="row">

                    <div class="col-12">
                       
                    </div>
                    <div class="col-md-6">
                        <div class="box-large">
                            <div class="box-top">
                                <img id="img-large" class="img-fluid" src="<?php echo $product['image']?>" alt="Product">
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-md-6 summary">
                        <h3 class="product-title"><?php echo $product['name']?></h3>
                            <div class="rating">
                                <div class="stars">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </div>
                                <span class="review-no">41 reviews</span>
                            </div>
                            <p class="product-description">hi</p>
                            <h4 class="price">current price: <span><?php echo $product['price']?></span></h4>
                            <p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
                            <h5 class="sizes">sizes:
                                <span class="size" data-toggle="tooltip" title="small">s</span>
                                <span class="size" data-toggle="tooltip" title="medium">m</span>
                                <span class="size" data-toggle="tooltip" title="large">l</span>
                                <span class="size" data-toggle="tooltip" title="xtra large">xl</span>
                            </h5>
                            <h5 class="colors">colors:
                                <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
                                <span class="color green"></span>
                                <span class="color blue"></span>
                            </h5>
                            <div class="action">
                            <form action="index.php?page=cart" method="post">
                                <input type="number" name="quantity" value="1" min="1" max="10" placeholder="Quantity" required>
                                <input type="hidden" name="product_id" value="<?=$product['id']?>">
                                <input type="submit" class="btn-default" value="Add To Cart">
                            </form>
                            </div>
                    </div>
                    
                </div>
            </div>
            
            <div class="col-md-4">
                <h3 class="product-title">Mô tả</h3>
                    <p><?php echo $product['description']?></p>
            </div>
        </div>
    </section>
    <!-- end of details -->