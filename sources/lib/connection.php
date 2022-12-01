<?php
class DB
{
  private static $instance = NULl;
  public static function getInstance()
  {
    if (!isset(self::$instance)) {
          // Docker
          //  $servername = "db";
          //  $username = "user";
          //  $password = "Aa@12345";
          //  $dbname = "fashion";
      
        $servername = "localhost";
          $username = "david";
          $password = "51WXHZC[r7t4Kw8I";
          $dbname = "fashion"; 

      self::$instance = new mysqli($servername, $username, $password, $dbname);
      if (self::$instance->connect_error) {
        die("Connection failed: " . self::$instance->connect_error);
      }
    }
    return self::$instance;
  }
}