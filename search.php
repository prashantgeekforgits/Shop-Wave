<?php

include 'db.php';

$keyword = '';

if(isset($_GET['keyword']))
{
    $keyword = mysqli_real_escape_string(
        $conn,
        $_GET['keyword']
    );
}

$sql = "
SELECT p.*, pi.image_url
FROM products p
LEFT JOIN product_images pi
ON p.product_id = pi.product_id
AND pi.is_main = 1
WHERE '$keyword' = ''
OR p.product_name LIKE '%$keyword%'
OR p.description LIKE '%$keyword%'
";


$result = mysqli_query($conn, $sql);

?>
<?php include 'includes/header.php'; ?>
<?php include 'includes/navbar.php'; ?>

<!-- Page Content -->

<?php include 'includes/footer.php'; ?>

<h1>
Search Results For:
<?php echo $keyword; ?>
</h1>

<div class="products-container">

<?php while($row = mysqli_fetch_assoc($result)) { ?>

<div class="product-card">

    <img
        src="<?php echo $row['image_url']; ?>"
        width="200"
    >

    <h3>
        <?php echo $row['product_name']; ?>
    </h3>

    <p>
        ₹<?php echo $row['price']; ?>
    </p>

    <a
        href="product_details.php?id=<?php echo $row['product_id']; ?>"
        class="btn"
    >
        View Product
    </a>

</div>

<?php } ?>

</div>