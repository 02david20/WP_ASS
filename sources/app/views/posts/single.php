<?php
if (isset($_POST['submit'])) {
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

	if (mysqli_num_rows($res1) > 0) {
		$message = "Đăng bài thành công";
		while ($fetch_data = $res1->fetch_assoc()) {
			$user_id = $fetch_data['id'];
		}
		$conn2 = DB::getInstance();
		$sql2 = 'INSERT INTO comments(user_id, content, author, email, post_id) VALUES(?,?,?,?,?)';
		$stmt2 = $conn1->prepare($sql2);
		$stmt2->execute([$user_id, $comments, $name, $email, $_GET['id']]);
	} else {
		$message = "Người dùng không tồn tại";
	}
}
?>

<?php include_once USER_PATH."views/shared/blog_header.php"?>


<a href="?controller=posts&action=single&id=<?= $pre_blog_id; ?>" class="fh5co-post-prev"><span><i class="icon-chevron-left"></i> Prev</span></a>
<a href="?controller=posts&action=single&id=<?= $next_blog_id; ?>" class="fh5co-post-next"><span>Next <i class="icon-chevron-right"></i></span></a>



<!-- END #fh5co-header -->
<div class="container-fluid">
	<?php
	$id = $_GET['id'];
	while ($one_post = $post->fetch_assoc()) {
	?>
		<div class="row fh5co-post-entry single-entry">
			<article class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12 col-xs-offset-0">
				<figure class="animate-box" >
					<img src="<?= PATH_URL_IMG_BLOG.$one_post['main_pic']; ?>" alt="Image" class="img-responsive">
				</figure>

				<span class="fh5co-meta animate-box"><a href="single.html"><?= $one_post['type_name']; ?></a></span>
				<h2 class="fh5co-article-title animate-box"><a href="single.html"><?= $one_post['title']; ?></a></h2>
				<span class="fh5co-meta fh5co-date animate-box"><?= $one_post['date']; ?></span>

				<div class="col-lg-12 col-lg-offset-0 col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-left content-article">

					<div class="row rp-b">
						<div class="col-lg-6 col-lg-push-6 col-md-12 col-md-push-0 animate-box">
							<figure>
								<img src="<?=  PATH_URL_IMG_BLOG.$one_post['sub_pic']; ?>" alt="Image" class="img-responsive">
								<figcaption><?=  $one_post['sub_pic_quote']; ?></figcaption>
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
				<!-- onclick="alert('<?php $message ?>') ? '' : location.reload(); " -->
				<input type="submit" value="Submit" class="btn btn-primary pull-right" name="submit">
			</div>
		</form>
	</div>
</div>

