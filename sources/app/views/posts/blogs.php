

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Blog &mdash;Page</title>
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" /> -->



  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
	
	<!--This cdns used for next pre icons.-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic|Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<!-- Animate -->
	<link rel="stylesheet" href="resources/posts-resource/css/animate.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="resources/posts-resource/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="resources/posts-resource/css/bootstrap.css">

	<link rel="stylesheet" href="resources/posts-resource/css/style.css">


	<!-- Modernizr JS -->
	<script src="./resources/posts-resource/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div id="fh5co-offcanvas">
		<a href="#" class="fh5co-close-offcanvas js-fh5co-close-offcanvas"><span><i class="icon-cross3"></i> <span>Close</span></span></a>
		<div class="fh5co-bio">
			<figure>
				<img src="./resources/posts-resource/images/aboutUs.jpg" alt="Our store" class="img-responsive">
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
         while($blog_category = $blog_categories->fetch_assoc()){ 
   		?>
					<li><a href="?controller=posts&action=blogs&category=<?= $blog_category['type_name']; ?>"><?= $blog_category['type_name']; ?></a></li>
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
	<!-- END #fh5co-offcanvas -->
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
					<h1 id="fh5co-logo"><a href="?controller=posts&action=blogs">HCMUT <sup>BKUer</sup></a></h1>
				</div>

			</div>
		
		</div>

	</header>

	<!-- END #fh5co-header -->
	<div class="container-fluid">
		<div class="row fh5co-post-entry">

		<?php
		
		if(!isset($_GET['category'])){
         while($post = $posts->fetch_assoc()){ 
			if($post['status'] == 1){
   		?>

			<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
				<figure>
					<a href="?controller=posts&action=single&id=<?= $post['id']; ?>"><img src="<?= $post['main_pic']; ?>" alt="Image" class="img-responsive"></a>
				</figure>
				<span class="fh5co-meta"><a href="?controller=posts&action=single&id=<?= $post['id']; ?>"><?= $post['type_name']; ?></a></span>
				<h2 class="fh5co-article-title"><a href="?controller=posts&action=single&id=<?= $post['id']; ?>"><?= $post['title']; ?></a></h2>
				<span class="fh5co-meta fh5co-date"><?= $post['date']; ?></span>
			</article>
			<!-- <div class="clearfix visible-xs-block"></div> -->
			<!-- <div class="clearfix visible-lg-block visible-md-block visible-sm-block visible-xs-block"></div> -->
			<!-- <div class="clearfix visible-xs-block"></div> -->
			<!-- <div class="clearfix visible-lg-block visible-md-block visible-sm-block visible-xs-block"></div> -->
	<?php 
			}
		 }
	}else {
	?>

	<?php
	$blog_choosen_category = $_GET['category'];
		while($post = $posts->fetch_assoc()){ 
			if($post['type_name'] == $blog_choosen_category){
	?>
			<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
				<figure>
					<a href="?controller=posts&action=single&id=<?= $post['id']; ?>"><img src="<?= $post['main_pic']; ?>" alt="Image" class="img-responsive"></a>
				</figure>
				<span class="fh5co-meta"><a href="?controller=posts&action=single&id=<?= $post['id']; ?>"><?= $post['type_name']; ?></a></span>
				<h2 class="fh5co-article-title"><a href="?controller=posts&action=single&id=<?= $post['id']; ?>"><?= $post['title']; ?></a></h2>
				<span class="fh5co-meta fh5co-date"><?= $post['date']; ?></span>
			</article>
	<?php
		}
		}
}
	?>
		</div>
	</div>


	<!-- Pagination -->
<div class="soft-pagination">
	<ul class="soft-pagination-items">
		<li> <i class="fa fa-chevron-circle-left" style="font-size:20px;color:white"></i></li>
		<li class="active">1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
		<li> <i class="fa fa-chevron-circle-right" style="font-size:20px;color:white;"></i></li>
	</ul>
</div>
	<!---->



	<footer id="fh5co-footer">
		<p><small>&copy; 2022. Magazine Free HTML5. All Rights Reserverd. <br> Designed by <a href="http://freehtml5.co" target="_blank">FREEHTML5.co</a>  Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a></small></p>
	</footer>


	
	<!-- jQuery -->
	<script src="resources/posts-resource/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="resources/posts-resource/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="resources/posts-resource/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="resources/posts-resource/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="resources/posts-resource/js/main.js"></script>

	</body>
</html>

