<?php
class Product {

  static function all()
  {
    $db = DB::getInstance();
    $sql = 'SELECT * FROM products';
    $res = $db->query($sql);
    return $res;
  }
  
  static function findByID($id)
  {
    $db = DB::getInstance();
    $sql = 'SELECT * FROM product WHERE id='.$id;
    $res = $db->query($sql);
    return $res->fetch_assoc();
  }

  static function Update($data=array()) {
    $table='product';
    foreach ($data as $key => $value) {
        $value = escape($value);
        $values[] = "`$key`='$value'";
    }
    $id = intval($data['id']);
    if ($id > 0) {
        $sql = "UPDATE `$table` SET " . implode(',', $values) . " WHERE `id`='$id'";
 
    } else {
        $sql = "INSERT INTO `$table` SET " . implode(',', $values);
    }
    if (DB::getInstance()->query($sql) === TRUE) {
      echo "Record Added Successfully";
    } else {
      echo "Error: " . $sql . "<br>" .DB::getInstance()->error;
    }

    $id = ($id > 0) ? $id : mysqli_insert_id(DB::getInstance());
    return $id;
  }

  static function findByCategory() {
    
  }
}