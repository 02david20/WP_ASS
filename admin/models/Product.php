<?php
class Product
{

  static function all()
  {
    $db = DB::getInstance();
    $sql = 'SELECT * FROM product';
    $res = $db->query($sql);
    return $res;
  }
  
  static function find($id)
  {

  }

  static function findByCategory() {
    
  }
}