<?php
session_start();
include 'db.php';

$user_id = $_SESSION['user_id'];
$product_id = $_GET['id'];

$sql = "INSERT INTO wishlist(user_id, product_id)
VALUES('$user_id','$product_id')";

mysqli_query($conn,$sql);

header("Location: products.php");
exit;
?>