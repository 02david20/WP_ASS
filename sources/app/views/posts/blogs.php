<?php include_once USER_PATH."views/shared/blog_header.php"?>

<div class="container-fluid">
	<div class="row fh5co-post-entry">

		<?php

		if (!isset($_GET['category'])) {
			while ($post = $posts->fetch_assoc()) {
				if ($post['status'] == 1) {
		?>

					<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
						<figure>
							<a href="?controller=posts&action=single&id=<?= $post['id']; ?>"><img src="<?= PATH_URL_IMG_BLOG. $post['main_pic']; ?>" alt="Image" class="img-responsive"></a>
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
		} else {
			?>

			<?php
			$blog_choosen_category = $_GET['category'];
			while ($post = $posts->fetch_assoc()) {
				if ($post['tslug'] == $blog_choosen_category) {
			?>
					<article class="col-lg-3 col-md-3 col-sm-3 col-xs-6 col-xxs-12 animate-box">
						<figure>
							<a href="?controller=posts&action=single&id=<?= $post['id']; ?>"><img src="<?= PATH_URL_IMG_BLOG.$post['main_pic']; ?>" alt="Image" class="img-responsive"></a>
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
