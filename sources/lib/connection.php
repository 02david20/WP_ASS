<?php
class DB
{
  private static $instance = NULl;
  public static function getInstance()
  {
    if (!isset(self::$instance)) {
      // Docker 
      //  $servername = "db"; 
      $servername = "localhost";
      $username = "root";
      $password = "";
      $dbname = "fashion";

      self::$instance = new mysqli($servername, $username, $password, $dbname);
      if (self::$instance->connect_error) {
        die("Connection failed: " . self::$instance->connect_error);
      }
    }
    return self::$instance;
  }
}