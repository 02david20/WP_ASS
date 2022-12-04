<div id="fh5co-offcanvas">
	<a href="#" class="fh5co-close-offcanvas js-fh5co-close-offcanvas"><span><i class="icon-cross3"></i> <span>Close</span></span></a>
	<div class="fh5co-bio">
		<figure>
			<img src=<?= PATH_URL_IMG . "aboutUs.jpg" ?> alt="Our store" class="img-responsive">
		</figure>
		<h3 class="heading">About Us</h3>
		<h2>Website name</h2>
		<p>Amazing and friendly shopping website for BKers. </p>
		<ul class="fh5co-social">
			<li><a href="#"><i class="icon-twitter"></i></a></li>
			<li><a href="#"><i class="icon-facebook"></i></a></li>
			<li><a href="#"><i class="icon-instagram"></i></a></li>
		</ul>
	</div>

	<div class="fh5co-menu">
		<div class="fh5co-box">
			<h3 class="heading">Categories</h3>
			<ul>
				<?php
				while ($blog_category = $blog_categories->fetch_assoc()) {
				?>
					<li class="category-list-a"><a href="?controller=posts&action=home&category=<?= $blog_category['slug']; ?>"><?= $blog_category['type_name']; ?></a></li>
				<?php
				}
				?>
			</ul>
		</div>
		<div class="fh5co-box">
			<h3 class="heading">Search</h3>
			<form action="#">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Type a keyword">
				</div>
			</form>
		</div>
	</div>
</div>

<header id="fh5co-header">

	<div class="container-fluid">

		<div class="row">
			<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
			<ul class="fh5co-social">
				<li><a href="#"><i class="icon-twitter"></i></a></li>
				<li><a href="#"><i class="icon-facebook"></i></a></li>
				<li><a href="#"><i class="icon-instagram"></i></a></li>
			</ul>
			<div class="col-lg-12 col-md-12 text-center">
				<h1 id="fh5co-logo"><a href="?controller=posts">Zay <sup>Fashion Blog</sup></a></h1>
			</div>

		</div>

	</div>

</header>
