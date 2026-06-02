<?php

session_start();

include 'db.php';

$product_id = $_POST['product_id'];

$rating = $_POST['rating'];

$review = mysqli_real_escape_string(
$conn,
$_POST['review_text']
);

$user_id = 1;

$sql = "
INSERT INTO reviews
(
product_id,
user_id,
rating,
review
)
VALUES
(
'$product_id',
'$user_id',
'$rating',
'$review_text'
)
";

mysqli_query(
$conn,
$sql
);

header(
"Location: product_details.php?id=$product_id"
);

$review_sql = "
SELECT *
FROM reviews
WHERE product_id = $product_id
ORDER BY created_at DESC
";

exit();

?>