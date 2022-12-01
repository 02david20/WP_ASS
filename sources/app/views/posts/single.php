<?php
if(isset($_POST['submit'])){
	$message = " ";
	$user_id = 0;
	$name = $_POST['name'];
	$name = filter_var($name, FILTER_SANITIZE_STRING);
	$email = $_POST['email'];
	$email = filter_var($email, FILTER_SANITIZE_STRING);
	$comments = $_POST['comments'];
	$comments = filter_var($comments, FILTER_SANITIZE_STRING);

	$conn1 = DB::getInstance();
	$sql1 = 'SELECT * FROM user WHERE email = ?';
	$stmt1 = $conn1->prepare($sql1);
	$stmt1->execute([$email]);
	$res1 = $stmt1->get_result();

	if(mysqli_num_rows($res1) > 0){
		$message = "Đăng bài thành công";
		while($fetch_data = $res1->fetch_assoc()){
			$user_id = $fetch_data['id'];
		}
		$conn2 = DB::getInstance();
		$sql2 = 'INSERT INTO comments(user_id, content, author, email, post_id) VALUES(?,?,?,?,?)';
		$stmt2 = $conn1->prepare($sql2);
		$stmt2->execute([$user_id, $comments, $name, $email, $_GET['id']]);
	}
	else{
		$message = "Người dùng không tồn tại";
	}

}

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
	<link rel="stylesheet" href="./resources/posts-resource/css/animate.css">
	<!-- Icomoon -->
	<link rel="stylesheet" href="./resources/posts-resource/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="./resources/posts-resource/css/bootstrap.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

	<link rel="stylesheet" href="./resources/posts-resource/css/style.css">


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
				<img src="./resources/posts-resource/images/aboutUs.jpg" alt="Writing" class="img-responsive">
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
	<a href="?controller=posts&action=single&id=<?= $pre_blog_id; ?>" class="fh5co-post-prev"><span><i class="icon-chevron-left"></i> Prev</span></a>
	<a href="?controller=posts&action=single&id=<?= $next_blog_id; ?>" class="fh5co-post-next"><span>Next <i class="icon-chevron-right"></i></span></a>



	<!-- END #fh5co-header -->
	<div class="container-fluid">
	<?php
      $id = $_GET['id'];
         while($one_post = $post->fetch_assoc()){ 
   ?>
		<div class="row fh5co-post-entry single-entry">
			<article class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12 col-xs-offset-0">
				<figure class="animate-box">
					<img src="<?= $one_post['main_pic']; ?>" alt="Image" class="img-responsive">
				</figure>
				<span class="fh5co-meta animate-box"><a href="single.html"><?= $one_post['type_name']; ?></a></span>
				<h2 class="fh5co-article-title animate-box"><a href="single.html"><?= $one_post['title']; ?></a></h2>
				<span class="fh5co-meta fh5co-date animate-box"><?= $one_post['date']; ?></span>
				
				<div class="col-lg-12 col-lg-offset-0 col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-left content-article">

					<div class="row rp-b">
						<div class="col-lg-6 col-lg-push-6 col-md-12 col-md-push-0 animate-box">
							<figure>
								<img src="<?= $one_post['sub_pic']; ?>" alt="Image" class="img-responsive">
								<figcaption><?= $one_post['sub_pic_quote']; ?></figcaption>
							</figure>
						</div>
						<div class="col-lg-6 col-lg-pull-6 col-md-12 col-md-pull-0 cp-r animate-box">
							<p><?= $one_post['para1']; ?></p>
						</div>
					</div>

					<div class="row">
						
						<div class="col-md-12 animate-box">
							<!-- <h2>Pointing has no control about the blind texts</h2> -->
							<p><?= $one_post['para2']; ?></p>
						</div>
					</div>
					
					
				</div>
			</article>
	<?php 
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
			<form class="form-block" method="POST" id="formBlock">
				<div class="row">
					<div class="col-xs-12 col-sm-6">
						<div class="form-group fl_icon">
							<div class="icon"><i class="fa fa-user"></i></div>
							<input class="form-input" type="text" name="name" placeholder="Your name">
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 fl_icon">
						<div class="form-group fl_icon">
							<div class="icon"><i class="fa fa-envelope-o"></i></div>
							<input class="form-input" type="email" name="email" placeholder="Your email">
						</div>
					</div>
					<div class="col-xs-12">
						<div class="form-group">
							<textarea class="form-input" required="" name="comments" placeholder="Your text"></textarea>
						</div>
					</div>
					<!-- onclick="alert('<?php $message?>') ? '' : location.reload(); " -->
					<input type="submit" value="Submit" class="btn btn-primary pull-right" name="submit" >
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
	<script src="./resources/posts-resource/js/main.js"></script>

	</body>
</html>

