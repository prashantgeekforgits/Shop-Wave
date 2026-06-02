<?php

include 'db.php';

$query = "SELECT * FROM brands";
$result = mysqli_query($conn, $query);

?>
<link rel="stylesheet" href="style.css">
<?php include 'navbar.php'; ?>
<?php include 'includes/header.php'; ?>
<?php include 'includes/navbar.php'; ?>

<!-- Page Content -->

<?php include 'includes/footer.php'; ?>

<h2 class="brand-title">Brands We Provide</h2>

<div class="brand-container">

<?php while($brand = mysqli_fetch_assoc($result)) { ?>

    <div class="brand-card">

        <a href="brand_products.php?id=<?php echo $brand['brand_id']; ?>">

            <img
                src="<?php echo $brand['logo_URL']; ?>"
                width="100"
                height="100"
            >

            <!--<p>
                <?php echo $brand['brand_name']; ?>
            </p>-->

        </a>

    </div>

<?php } ?>

</div>