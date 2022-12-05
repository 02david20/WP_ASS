<?php
class Order {
    static function find_order_id_by_createtime($createtime, $username) {
        $conn = DB::getInstance();
        $sql = "SELECT * FROM orders WHERE orders.createtime = '". $createtime."' AND orders.customer ='" .$username ."'";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_assoc()['id'];
    }
    static function insert_into_order($input_insert_order) {
        $conn = DB::getInstance();
        // $columns = implode(", ",array_keys($input_insert_order));

        // $escaped_values = array_map(array($conn, 'real_escape_string'), array_values($input_insert_order));

        // $values  = implode("', '", $escaped_values);

        // $sql = "INSERT INTO fashion.orders ($columns) VALUES ('$values')";
        $sql = "INSERT INTO orders (customer, province, address, phone, cart_total, createtime, message, status, user_id, editTime) VALUES ('"
         .$input_insert_order['customer'] ."','"
         .$input_insert_order['province'] ."','"
         .$input_insert_order['address'] ."','"
         .$input_insert_order['phone'] ."',"
         .$input_insert_order['cart_total'] .",'"
         .$input_insert_order['createtime'] ."','"
         .$input_insert_order['message'] ."',"
         .$input_insert_order['status'] ."," 
         .$input_insert_order['user_id'] .",'"
         .$input_insert_order['editTime'] ."'". ")";
        
         $stmt = $conn->prepare($sql);
        $stmt->execute();
    }

    static function insert_into_orderdetails($input_insert_detail) {
        $conn = DB::getInstance();
        $columns = implode(", ",array_keys($input_insert_detail));

        $escaped_values = array_map(array($conn, 'real_escape_string'), array_values($input_insert_detail));

        $values  = implode("', '", $escaped_values);
        $sql = "INSERT INTO fashion.order_detail ($columns) VALUES ('$values')";

        // $sql = "INSERT INTO fashion.orderdetails (order_id, product_id, price, amount) VALUES (?,?,?,?)";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        // $stmt->execute([$id,$order_id, $product_id, $price, $amount, $total]);
    }
    static function orders_by_id($username) {
        $conn = DB::getInstance();
        $sql = "SELECT * FROM orders WHERE customer = '" . $username. "'";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
    static function order_detail_by_id($order_id) {
        $conn = DB::getInstance();
        // $sql = "SELECT * FROM orders WHERE customer = '" . $username. "'";
        $sql = "SELECT * FROM order_detail WHERE order_id = ?"; // array of array
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $order_id);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
    static function remove_order_by_id($order_id) {
        $conn = DB::getInstance();
        $sql = "DELETE FROM orders WHERE orders.id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $order_id);
        $stmt->execute();
        return;
    }
    static function total_orders_by_id($username) {
        $conn = DB::getInstance();
        $sql = "SELECT * FROM orders WHERE customer = '". $username. "'";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->num_rows;
    }
}
?>