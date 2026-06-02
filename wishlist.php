<?php
session_start();
include 'db.php';

$user_id = $_SESSION['user_id'];

$sql = "
SELECT p.*, pi.image_url
FROM wishlist w
JOIN products p ON w.product_id = p.product_id
LEFT JOIN product_images pi
ON p.product_id = pi.product_id
AND pi.is_main = 1
WHERE w.user_id = '$user_id'
";

$result = mysqli_query($conn,$sql);
?>