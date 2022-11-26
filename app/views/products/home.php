<?php
// Get the 4 most recently added products
$stmt = $pdo->prepare('SELECT * FROM products');
$stmt->execute();
$recently_added_products = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<?=template_header('Home')?>

<?=template_footer()?>