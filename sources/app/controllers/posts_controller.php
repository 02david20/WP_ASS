<?php
require_once(USER_PATH . 'controllers/base_controller.php');
require_once(USER_PATH . 'models/Post.php');

class PostsController extends BaseController
{
  function __construct()
  {
    $this->folder = 'posts';
  }

  public function blogs()
  {
    $posts = Post::all();
    $blog_categories = Post::filter_blog_categories();
    
    $data = ['posts'=>$posts, 'blog_categories'=>$blog_categories];
    $this->render('blogs', $data, 'blog');
  }

  public function single()
  {
    $posts = Post::all();
    $blog_categories = Post::filter_blog_categories();
    $post = Post::filter_by_id($_GET['id']);
    $next_blog_id = Post::get_next_post($_GET['id']);
    $pre_blog_id = Post::get_previous_post($_GET['id']);

    $data = ['posts'=>$posts, 'blog_categories'=>$blog_categories, 'post'=>$post, 'next_blog_id'=>$next_blog_id, 'pre_blog_id'=>$pre_blog_id];
    $this->render('single', $data, 'blog');
  }
}
