<?php
class Post
{

  static function all()
  {
    $conn= DB::getInstance();

    $sql = 'SELECT blog_types.type_name, blog_types.slug, blog.main_pic, blog.type, blog.title, blog.date, blog.para1, blog.sub_pic, blog.para2, blog.sub_pic_quote, blog.id, blog.status FROM blog_types, blog WHERE blog_types.id = blog.type AND blog.status = 1';
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $res = $stmt->get_result();
       
    return $res;
  }

  static function all_users(){
    $conn= DB::getInstance();

    $sql = 'SELECT * FROM user';
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $res = $stmt->get_result();

    return $res;
  }

  static function all_comments($id){
    $conn= DB::getInstance();

    $sql = 'SELECT user.username, user.avatar,  postcomment.* FROM user, postcomment WHERE user.id = postcomment.user_id AND postcomment.post_id = ?';
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id]);
    $res = $stmt->get_result();

    return $res;
  }
  
  static function filter_blog_categories()
  {
    $conn= DB::getInstance();

    $sql = 'SELECT blog.type, blog_types.type_name, blog_types.slug FROM blog INNER JOIN blog_types ON blog.type = blog_types.id WHERE blog.status = 1 GROUP BY blog.type';
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $res = $stmt->get_result();

    return $res;
  }

  static function count_blog_comment($id){
    $conn= DB::getInstance();

    $sql = 'SELECT COUNT(*) AS blog_num FROM postcomment WHERE post_id = ?';
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id]);
    $res = $stmt->get_result();

    return $res;
  }

  static function filter_by_id($id) {
    $conn= DB::getInstance();

    $sql = 'SELECT blog_types.type_name, blog.* FROM blog_types, blog WHERE blog.id = ? AND blog_types.id = blog.type';
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id]);
    $res = $stmt->get_result();

    return $res;
  }

  static function get_next_post($id){
    $next_id = 0;
    $begin_id = 0;

    $conn1= DB::getInstance();
    $sql1 = 'SELECT id FROM blog WHERE id != ? AND blog.status = 1 ORDER BY id ASC';
    $stmt1 = $conn1->prepare($sql1);
    $stmt1->execute([$id]);
    $res1 = $stmt1->get_result();


		while($fetch_id = $res1->fetch_assoc()){
			$begin_id = $fetch_id['id'];
			break;
		}


    $conn2= DB::getInstance();
    $sql2 = 'SELECT id FROM blog WHERE id != ? AND blog.status = 1 ORDER BY id ASC';
    $stmt2 = $conn2->prepare($sql2);
    $stmt2->execute([$id]);
    $res2 = $stmt2->get_result();


		while($fetch_id = $res2->fetch_assoc()){
			if($fetch_id['id'] > $id){
				$next_id = $fetch_id['id'];
				break;
			}
			$next_id = $begin_id;
		}


  return $next_id;

  }

  static function get_previous_post($id){
    $pre_id = 0;
    $end_id = 0;

    $conn1= DB::getInstance();
    $sql1 = 'SELECT id FROM blog WHERE id != ? AND blog.status = 1 ORDER BY id ASC';
    $stmt1 = $conn1->prepare($sql1);
    $stmt1->execute([$id]);
    $res1 = $stmt1->get_result();


		while($fetch_id = $res1->fetch_assoc()){
			$end_id = $fetch_id['id'];
		}


    $conn2= DB::getInstance();
    $sql2 = 'SELECT id FROM blog WHERE id != ? AND blog.status = 1 ORDER BY id DESC';
    $stmt2 = $conn2->prepare($sql2);
    $stmt2->execute([$id]);
    $res2 = $stmt2->get_result();


		while($fetch_id = $res2->fetch_assoc()){
			if($fetch_id['id'] < $id){
				$pre_id = $fetch_id['id'];
				break;
			}
			$pre_id = $end_id;
		}


  return $pre_id;
  }

}