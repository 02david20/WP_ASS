<?php

@include 'config.php';
?>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Article</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
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

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<!-- Google Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic|Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<!-- Animate -->
	<link rel="stylesheet" href="/User_Interface_change/resources/posts-resource/css/animate.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="/User_Interface_change/resources/posts-resource/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/User_Interface_change/resources/posts-resource/css/bootstrap.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

	<link rel="stylesheet" href="/User_Interface_change/resources/posts-resource/css/style.css">


	<!-- Modernizr JS -->
	<script src="/User_Interface_change/resources/posts-resource/js/modernizr-2.6.2.min.js"></script>
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
				<img src="/User_Interface_change/resources/posts-resource/images/aboutUs.jpg" alt="Writing" class="img-responsive">
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
      $select_category = $conn->prepare("SELECT `type` FROM `blog` GROUP BY `type`");
      $select_category->execute();
      if($select_category->rowCount() > 0){
         while($fetch_category = $select_category->fetch(PDO::FETCH_ASSOC)){ 
   		?>
					<li><a href="blogs.php?category=<?= $fetch_category['type']; ?>"><?= $fetch_category['type']; ?></a></li>
		<?php 
		 }
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
					<h1 id="fh5co-logo"><a href="blogs.php">HCMUT <sup>BKUer</sup></a></h1>
				</div>

			</div>
		
		</div>

	</header>
	<?php 
	$current_id = $_GET['id'];
	$next_id = 0;
	$pre_id = 0;
	$begin_id = 0;
	$end_id = 0;
	$select_id_asc1 = $conn->prepare("SELECT `id` FROM `blog` WHERE id != ? ORDER BY `id` ASC");
	$select_id_asc2 = $conn->prepare("SELECT `id` FROM `blog` WHERE id != ? ORDER BY `id` ASC");
	$select_id_asc3 = $conn->prepare("SELECT `id` FROM `blog` WHERE id != ? ORDER BY `id` ASC");
	$select_id_desc1 = $conn->prepare("SELECT `id` FROM `blog` WHERE id != ? ORDER BY `id` DESC");
	$select_id_asc1->execute([$current_id]);
	$select_id_asc2->execute([$current_id]);
	$select_id_asc3->execute([$current_id]);
	$select_id_desc1->execute([$current_id]);
	if($select_id_asc1->rowCount() > 0){
		while($fetch_id = $select_id_asc1->fetch(PDO::FETCH_ASSOC)){
			$begin_id = $fetch_id['id'];
			break;
		}
	}
	if($select_id_asc2->rowCount() > 0){
		while($fetch_id = $select_id_asc2->fetch(PDO::FETCH_ASSOC)){
			$end_id = $fetch_id['id'];
		}
	}

	if($select_id_asc3->rowCount() > 0){
		while($fetch_id = $select_id_asc3->fetch(PDO::FETCH_ASSOC)){
			if($fetch_id['id'] > $current_id){
				$next_id = $fetch_id['id'];
				break;
			}
			$next_id = $begin_id;
		}
	}

	if($select_id_desc1->rowCount() > 0){
		while($fetch_id = $select_id_desc1->fetch(PDO::FETCH_ASSOC)){
			if($fetch_id['id'] < $current_id){
				$pre_id = $fetch_id['id'];
				break;
			}
			$pre_id = $end_id;
		}
	}

	?>
	<a href="single.php?id=<?= $pre_id; ?>" class="fh5co-post-prev"><span><i class="icon-chevron-left"></i> Prev</span></a>
	<a href="single.php?id=<?= $next_id; ?>" class="fh5co-post-next"><span>Next <i class="icon-chevron-right"></i></span></a>



	<!-- END #fh5co-header -->
	<div class="container-fluid">
	<?php
      $id = $_GET['id'];
      $select_blogs = $conn->prepare("SELECT * FROM `blog` WHERE id = ?");
      $select_blogs->execute([$id]);
      if($select_blogs->rowCount() > 0){
         while($fetch_blogs = $select_blogs->fetch(PDO::FETCH_ASSOC)){ 
   ?>
		<div class="row fh5co-post-entry single-entry">
			<article class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12 col-xs-offset-0">
				<figure class="animate-box">
					<img src="<?= $fetch_blogs['main_pic']; ?>" alt="Image" class="img-responsive">
				</figure>
				<span class="fh5co-meta animate-box"><a href="single.html"><?= $fetch_blogs['type']; ?></a></span>
				<h2 class="fh5co-article-title animate-box"><a href="single.html"><?= $fetch_blogs['title']; ?></a></h2>
				<span class="fh5co-meta fh5co-date animate-box"><?= $fetch_blogs['date']; ?></span>
				
				<div class="col-lg-12 col-lg-offset-0 col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-left content-article">

					<div class="row rp-b">
						<div class="col-lg-6 col-lg-push-6 col-md-12 col-md-push-0 animate-box">
							<figure>
								<img src="<?= $fetch_blogs['sub_pic']; ?>" alt="Free HTML5 Bootstrap Template by FREEHTML5.co" class="img-responsive">
								<figcaption><?= $fetch_blogs['sub_pic_quote']; ?></figcaption>
							</figure>
						</div>
						<div class="col-lg-6 col-lg-pull-6 col-md-12 col-md-pull-0 cp-r animate-box">
							<p><?= $fetch_blogs['para1']; ?></p>
						</div>
					</div>

					<div class="row">
						
						<div class="col-md-12 animate-box">
							<!-- <h2>Pointing has no control about the blind texts</h2> -->
							<p><?= $fetch_blogs['para2']; ?></p>
						</div>
					</div>
					
					
				</div>
			</article>
	<?php 
		 }
		}
	?>
		</div>
	</div>


	<div class="container">
		<div class="be-comment-block">
			<h1 class="comments-title">Comments (3)</h1>
			<div class="be-comment">
				<div class="be-img-comment">
					<a href="blog-detail-2.html">
						<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="be-ava-comment">
					</a>
				</div>
				<div class="be-comment-content">
	
					<span class="be-comment-name">
						<a href="blog-detail-2.html">Ravi Sah</a>
					</span>
					<span class="be-comment-time">
						<i class="fa fa-clock-o"></i>
						May 27, 2015 at 3:14am
					</span>
	
					<p class="be-comment-text">
						Pellentesque gravida tristique ultrices.
						Sed blandit varius mauris, vel volutpat urna hendrerit id.
						Curabitur rutrum dolor gravida turpis tristique efficitur.
					</p>
				</div>
			</div>
			<div class="be-comment">
				<div class="be-img-comment">
					<a href="blog-detail-2.html">
						<img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="" class="be-ava-comment">
					</a>
				</div>
				<div class="be-comment-content">
					<span class="be-comment-name">
						<a href="blog-detail-2.html">Phoenix, the Creative Studio</a>
					</span>
					<span class="be-comment-time">
						<i class="fa fa-clock-o"></i>
						May 27, 2015 at 3:14am
					</span>
					<p class="be-comment-text">
						Nunc ornare sed dolor sed mattis. In scelerisque dui a arcu mattis, at maximus eros commodo. Cras
						magna nunc, cursus lobortis luctus at, sollicitudin vel neque. Duis eleifend lorem non ant. Proin ut
						ornare lectus, vel eleifend est. Fusce hendrerit dui in turpis tristique blandit.
					</p>
				</div>
			</div>
			<div class="be-comment">
				<div class="be-img-comment">
					<a href="blog-detail-2.html">
						<img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="" class="be-ava-comment">
					</a>
				</div>
				<div class="be-comment-content">
					<span class="be-comment-name">
						<a href="blog-detail-2.html">Cüneyt ŞEN</a>
					</span>
					<span class="be-comment-time">
						<i class="fa fa-clock-o"></i>
						May 27, 2015 at 3:14am
					</span>
					<p class="be-comment-text">
						Cras magna nunc, cursus lobortis luctus at, sollicitudin vel neque. Duis eleifend lorem non ant
					</p>
				</div>
			</div>
			<form class="form-block">
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<div class="form-group fl_icon">
							<div class="icon"><i class="fa fa-user"></i></div>
							<input class="form-input" type="text" placeholder="Your name">
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 fl_icon">
						<div class="form-group fl_icon">
							<div class="icon"><i class="fa fa-envelope-o"></i></div>
							<input class="form-input" type="text" placeholder="Your email">
						</div>
					</div>
					<div class="col-xs-12">
						<div class="form-group">
							<textarea class="form-input" required="" placeholder="Your text"></textarea>
						</div>
					</div>
					<a class="btn btn-primary pull-right">submit</a>
				</div>
			</form>
		</div>
	</div>

	<footer id="fh5co-footer">
		<p><small>&copy; 2022. Magazine Free HTML5. All Rights Reserverd. <br> Designed by <a href="http://freehtml5.co" target="_blank">FREEHTML5.co</a>  Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a></small></p>
	</footer>
	
	<!-- jQuery -->
	<script src="/User_Interface_change/resources/posts-resource/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/User_Interface_change/resources/posts-resource/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/User_Interface_change/resources/posts-resource/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/User_Interface_change/resources/posts-resource/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="/User_Interface_change/resources/posts-resource/js/main.js"></script>

	</body>
</html>

