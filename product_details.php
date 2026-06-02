<?php

include 'db.php';

$product_id = (int)$_GET['id'];



$sql = "
SELECT p.*, pi.image_url
FROM products p
LEFT JOIN product_images pi
ON p.product_id = pi.product_id
AND pi.is_main = 1
WHERE p.product_id = $product_id
";

$result = mysqli_query($conn, $sql);

$product = mysqli_fetch_assoc($result);
$rating_sql = "
SELECT
AVG(rating) AS avg_rating,
COUNT(*) AS total_reviews
FROM reviews
WHERE product_id = $product_id
";

$rating_result = mysqli_query(
$conn,
$rating_sql
);

$rating = mysqli_fetch_assoc(
$rating_result
);

?>

<!DOCTYPE html>
<html>
<head>
    <title>
        <?php echo $product['product_name']; ?>
    </title>

    <link rel="stylesheet" href="style.css">
</head>

<body>

<?php include 'includes/header.php'; ?>
<?php include 'includes/navbar.php'; ?>





<?php include 'navbar.php'; ?>

<div class="product-details">

    <div class="product-image">

        <img
            src="<?php echo $product['image_url']; ?>"
            alt="<?php echo $product['product_name']; ?>"
        >

    </div>

    <div class="product-info">

        <h1>
            <?php echo $product['product_name']; ?>
        </h1>

        <h2 class="price" style="margin-bottom:2px;"padding:0;>
            ₹<?php echo number_format($product['price']); ?>
        </h2>
        <p> <strong>MRP</strong>  inclusive of all taxes</p>
        <img src="<?php echo $product['image_url']; ?>" alt="<?php echo $product['product_name']; ?>" style="width:100px;height:150px; margin-top:0; margin-bottom:20px; border-radius:10px;border:2px solid black;object-fit: contain;">

        <h3>
⭐ <?php echo round($rating['avg_rating'],1); ?>/5
(<?php echo $rating['total_reviews']; ?> Reviews)
</h3>

        <p class="description">
            <?php echo $product['description']; ?>
        </p>

        <h2>Write A Review</h2>

<form action="submit_review.php" method="POST">

<input
type="hidden"
name="product_id"
value="<?php echo $product_id; ?>"
>

<select name="rating">

<option value="5">5 Stars</option>
<option value="4">4 Stars</option>
<option value="3">3 Stars</option>
<option value="2">2 Stars</option>
<option value="1">1 Star</option>

</select>

<br><br>

<textarea
name="review_text"
rows="5"
cols="40"
required
></textarea>

<br><br>

<button type="submit">
Submit Review
</button>

</form>

        <p>
            Status:
            <?php echo $product['status']; ?>
        </p>

        <a
            href="addToCart.php?id=<?php echo $product['product_id']; ?>"
            class="cart-btn"
        >
            Add To Cart
        </a>

        <a
    href="buy_now.php?id=<?php echo $product['product_id']; ?>"
    class="buy-btn"
>
    Buy Now
</a>
    </div>
    <h2>Customer Reviews</h2>

<?php

$review_sql = "
SELECT *
FROM reviews
WHERE product_id = $product_id
ORDER BY review_id DESC
";

$reviews = mysqli_query(
$conn,
$review_sql
);

while(
$review = mysqli_fetch_assoc($reviews)
)
{
?>

<div class="review-box">

<p>
⭐ <?php echo $review['rating']; ?>/5
</p>

<p>
<?php echo $review['review']; ?>
</p>

<p>
<?php echo $review['created_at']; ?>
</p>

</div>

<hr>

<?php
}
?>

</div>
<?php include 'includes/footer.php'; ?>
</body>
</html>