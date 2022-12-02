<?php
class Order {
    static function new_order_id() {
        $conn = DB::getInstance();
        $sql = 'SELECT * FROM orders';
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->num_rows;
    }
    static function insert_into_order($order_id, $user_id, $note, $order_date, $total) {
        $conn = DB::getInstance();
        $sql = "INSERT INTO fashion.order (id, user_id, note, order_date, total) VALUES ($order_id, $user_id, $note, $order_date, $total)";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
    }

    static function insert_into_orderdetails($id,$order_id, $product_id, $price, $amount, $total) {
        $conn = DB::getInstance();
        $sql = "INSERT INTO fashion.orderdetails (id, order_id, product_id, price, amount, total) VALUES (?,?,?,?,?,?)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$id,$order_id, $product_id, $price, $amount, $total]);
    }
    static function new_orderdetails_id() {
        $conn = DB::getInstance();
        $sql = 'SELECT * FROM orderdetails';
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->num_rows;
    }
}
?>