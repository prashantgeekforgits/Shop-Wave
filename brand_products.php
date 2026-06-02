<?php

include 'db.php';

$brand_id = (int)$_GET['id'];

$brand_query = "
SELECT *
FROM brands
WHERE brand_id = $brand_id
";

$brand_result = mysqli_query($conn, $brand_query);

$brand = mysqli_fetch_assoc($brand_result);

$product_query = "
SELECT p.*, pi.image_url
FROM products p
LEFT JOIN product_images pi
ON p.product_id = pi.product_id
AND pi.is_main = 1
WHERE p.brand_id = $brand_id
";


$result = mysqli_query($conn, $product_query);

?>
<?php include 'includes/header.php'; ?>
<?php include 'includes/navbar.php'; ?>

<!-- Page Content -->

<?php include 'includes/footer.php'; ?>

<h1 class="brand-title">
    <?php echo $brand['brand_name']; ?> Products
</h1>

<div class="products-container">

<?php while($row = mysqli_fetch_assoc($result)) { ?>

<div class="product-card">

    <img
        src="<?php echo $row['image_url']; ?>"
        alt="<?php echo $row['product_name']; ?>"
        width="200"
        height="200"
    >

    <h3>
        <?php echo $row['product_name']; ?>
    </h3>

    <p class="description">
        <?php echo $row['description']; ?>
    </p>

    <p class="price">
        ₹<?php echo number_format($row['price']); ?>
    </p>

    <div class="btn-container">

    <a
        href="product_details.php?id=<?php echo $row['product_id']; ?>"
        class="view-btn"
    >
        View Product
    </a>

    <br><br>

    <a
        href="addtocart.php?id=<?php echo $row['product_id']; ?>"
        class="cart-btn"
    >
        Add To Cart
    </a>

    <br><br>

    <a
        href="checkout.php?id=<?php echo $row['product_id']; ?>"
        class="buy-btn"
    >
        Buy Now
    </a>

</div>

</div>

<?php } ?>

</div>