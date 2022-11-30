<?php
class DB
{
    private static $instance = NULl;
    public static function getInstance() {
      if (!isset(self::$instance)) {
       
          // $servername = "db";
          // $username = "user";
          // $password = "Aa@12345";
          // $dbname = "shop";
      
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