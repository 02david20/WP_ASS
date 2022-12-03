<?php

if(isset($_SESSION['admin_id'])){
   header("Location: admin.php?controller=posts&action=single&id=" . $_GET['id']);
};
?>


<?php
if(isset($_POST['submit'])){
$message;
$user_id;
$name = $_POST['name'];
$email = $_POST['email'];
$comments = $_POST['comments'];
$datetime = date("Y-m-d") . " " . date("h:i:sa");
$datetime = substr($datetime, 0, -2);

while($one_user = $all_users->fetch_assoc()){
	if($one_user['email'] == $email){
		$message = "Đăng bài thành công";
		$user_id = $one_user['id'];
		break;
	}
	$message = "Người dùng không tồn tại";
}




echo "<script type='text/javascript'>alert('$message');</script>";

if($message == "Đăng bài thành công"){
	$conn = DB::getInstance();

	$sql = "INSERT INTO postcomment (post_id, user_id, content, created_at) VALUES(?,?,?,?)";
	$stmt = $conn->prepare($sql);
	$stmt->execute([$_GET['id'], $user_id, $comments, $datetime]);

	header("Location: ?controller=posts&action=single&id=" . $_GET['id']);
	exit();

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
					<img src="<?= PATH_URL_IMG_BLOG . $one_post['main_pic']; ?>" alt="Image" class="img-responsive auto-height">
				</figure>

				<span class="fh5co-meta animate-box"><a href="single.html"><?= $one_post['type_name']; ?></a></span>
				<h2 class="fh5co-article-title animate-box"><a href="single.html"><?= $one_post['title']; ?></a></h2>
				<span class="fh5co-meta fh5co-date animate-box"><?= $one_post['date']; ?></span>

				<div class="col-lg-12 col-lg-offset-0 col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-left content-article">

					<div class="row rp-b">
						<div class="col-lg-6 col-lg-push-6 col-md-12 col-md-push-0 animate-box">
							<figure>
								<img src="<?=  PATH_URL_IMG_BLOG . $one_post['sub_pic']; ?>" alt="Image" class="img-responsive">
								<figcaption class="sub-pic-quote"><?=  $one_post['sub_pic_quote']; ?></figcaption>
							</figure>
						</div>
						<div class="col-lg-6 col-lg-pull-6 col-md-12 col-md-pull-0 cp-r animate-box para1">
							<p><?= $one_post['para1']; ?></p>
						</div>
					</div>

					<div class="row">

						<div class="col-md-12 animate-box">
							<!-- <h2>Pointing has no control about the blind texts</h2> -->
							<p class="para2"><?= $one_post['para2']; ?></p>
						</div>
					</div>


				</div>
			</article>
		<?php
	}

		?>
		</div>
</div>


<!-- Comment section -->

<div class="container">
	<div class="be-comment-block">
		<?php $comment_in_blog = $comment_num->fetch_assoc() ?>
		<h1 class="comments-title">Comments (<?= $comment_in_blog['blog_num'] ?>)</h1>
		<?php
			while($one_comment = $all_comments->fetch_assoc()){
		?>
		<div class="be-comment">
			<div class="be-img-comment">
				<a href="blog-detail-2.html">
					<img src="<?= $one_comment['avatar'] ?>" alt="" class="be-ava-comment">
				</a>
			</div>
			<div class="be-comment-content">

				<span class="be-comment-name">
					<a href="blog-detail-2.html"><?= $one_comment['username'] ?></a>
				</span>
				<span class="be-comment-time">
					<i class="fa fa-clock-o"></i>
					<?= $one_comment['created_at'] ?>
				</span>

				<p class="be-comment-text">
					<?= $one_comment['content'] ?>
				</p>
			</div>
		</div>
		<?php
			}
		?>

		<form class="form-block" method="POST" id="formBlock">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<div class="form-group fl_icon">
						<div class="icon"><i class="fa fa-user"></i></div>
						<input class="form-input" required="" type="text" name="name" placeholder="Your name">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 fl_icon">
					<div class="form-group fl_icon">
						<div class="icon"><i class="fa fa-envelope-o"></i></div>
						<input class="form-input" required="" type="email" name="email" placeholder="Your email">
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<textarea class="form-input" required="" name="comments" placeholder="Your text"></textarea>
					</div>
				</div>
				<!-- onclick="alert('<?php $message ?>') ? '' : location.reload(); " -->
				<button id="btnSubmit" name="submit" type="submit" class="btn btn-primary pull-right">Submit</button>
			</div>
		</form>
	</div>
</div>

