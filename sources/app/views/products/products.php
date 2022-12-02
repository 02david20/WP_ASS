

    <!--men collection -->
    <!--men collection -->
    <section id = "mencollection" class = "py-5 ">
        <div class = "container">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;); padding-top:80px" aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Men</li>
                  </ol>
            </nav>
            <div class = "title text-center ">
                <h2 class = "position-relative d-inline-block">Thời trang nam</h2>
            </div>

            <div class = "row g-0">
                <div class = "d-flex flex-wrap justify-content-center mt-5 filter-button-group">
                    <form action="?controller=products&action=cate1" method="post">
                    <button type = "button" class = "btn m-2 text-dark active-filter-btn" data-filter = "*">All</button>
                        
                        <input type="submit" class="btn m-2 text-dark" value="Best Sellers" name="bestsellers">
                        <input type="submit" class="btn m-2 text-dark" value="On Sale" name="onsale">
                        <input type="submit" class="btn m-2 text-dark" value="New Arrival" name="newarrival">
                      </form>
                        
                </div>

                <div class = "collection-list mt-4 row gx-0 gy-3">
                    <?php 
                    foreach ($products as $product): ?>
                        
                            <div class = "col-md-6 col-lg-4 col-xl-3 p-2 best">
                                <div class = "collection-img position-relative">
                                <a href="?controller=products&action=product&id=<?php echo $product['id']; ?>">
                                        <img src = "<?php echo PATH_URL_IMG_PRODUCT . $product['img1']?>" class = "w-100">
                                        <span class = "position-absolute bg-primary text-white d-flex align-items-center justify-content-center">sale</span>
                                </a>
                                
                                </div>
                                <div class = "text-center">
                                    <div class = "rating mt-3">
                                        <span class = "text-primary"><i class = "fas fa-star"></i></span>
                                        <span class = "text-primary"><i class = "fas fa-star"></i></span>
                                        <span class = "text-primary"><i class = "fas fa-star"></i></span>
                                        <span class = "text-primary"><i class = "fas fa-star"></i></span>
                                        <span class = "text-primary"><i class = "fas fa-star"></i></span>
                                    </div>
                                    <p class = "text-capitalize my-1"><?php echo $product['name']?></p>
                                    <span class = "fw-bold"><?php echo $product['price']?></span>
                                </div>
                            </div>
                    
                    <?php endforeach; ?>   
                </div>

            </div>
        </div>
    </section>
    <!-- end of collection men-->
