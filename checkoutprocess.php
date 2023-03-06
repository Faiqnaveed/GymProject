<?php
session_start();
echo "<pre>";
print_r($_POST);
//INSERT INTO `order_products`(`product_id`, `product_qty`, `total_amount`, `product_user`) VALUES ("$_POST['product_id']","$_POST['product_qty']","$_POST['product_total']")
echo $_SESSION["admin_name"];
?>