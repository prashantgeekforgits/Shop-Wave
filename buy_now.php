<?php

session_start();

$product_id = (int)$_GET['id'];

$_SESSION['cart'] = [];

$_SESSION['cart'][$product_id] = 1;

header("Location: checkout.php");

exit();
?>