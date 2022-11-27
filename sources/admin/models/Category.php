<?php
class Category {

  static function all()
  {
    $conn= DB::getInstance();

    $sql = 'SELECT * FROM categories';

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $res = $stmt->get_result();
       
    return $res;
  }
  
  static function findByID($id)
  {
    $conn= DB::getInstance();

    $sql = 'SELECT * FROM categories WHERE id=?';

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $res = $stmt->get_result();

    return $res->fetch_assoc();
  }

  static function deleteByID($id)
  {

    $conn= DB::getInstance();
    $sql = "DELETE FROM categories WHERE id=$id ";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $res = $stmt->get_result();
    return $res;
  }

  static function Update($data=array()) {
    $conn= DB::getInstance();
    $table='categories';
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
    echo $sql;

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $res = $stmt->get_result();

    if ($res === TRUE) {
      echo "Record Added Successfully";
    } else {
      echo "Error: " . $sql . "<br>" .DB::getInstance()->error;
    }

    $id = ($id > 0) ? $id : mysqli_insert_id(DB::getInstance());
    return $id;
  }

}