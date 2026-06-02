<?php
session_start();
include 'db.php';

/* CART LOGIC */
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

if (isset($_GET['action'], $_GET['id']) && $_GET['action'] === 'remove') {
    $remove_id = (int)$_GET['id'];
    unset($_SESSION['cart'][$remove_id]);
    header("Location: product.php");
    exit();
}

if (isset($_GET['add'])) {
    $add_id = (int)$_GET['add'];

    if (isset($_SESSION['cart'][$add_id])) {
        $_SESSION['cart'][$add_id]++;
    } else {
        $_SESSION['cart'][$add_id] = 1;
    }

    header("Location: product.php");
    exit();
}

$cartCount = array_sum($_SESSION['cart']);

$wishlistProducts = [];
if (isset($_SESSION['user_id'])) {
    $user_id = (int)$_SESSION['user_id'];
    $wishlistResult = mysqli_query($conn, "SELECT product_id FROM wishlist WHERE user_id = $user_id");
    if ($wishlistResult) {
        while ($wishRow = mysqli_fetch_assoc($wishlistResult)) {
            $wishlistProducts[(int)$wishRow['product_id']] = true;
        }
    }
}

/* PRODUCTS QUERY */

if (isset($_GET['category_id'])) {

    $category_id = (int)$_GET['category_id'];

    $sql = "
    SELECT p.*, pi.image_url
    FROM products p
    LEFT JOIN product_images pi
    ON p.product_id = pi.product_id
    AND pi.is_main = 1
    WHERE p.category_id = $category_id
    ";
}
else {

    $sql = "
    SELECT p.*, pi.image_url
    FROM products p
    LEFT JOIN product_images pi
    ON p.product_id = pi.product_id
    AND pi.is_main = 1
    ";
}

$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

body{
    background:#f4f4f4;
}

/* NAVBAR */

.navbar{
    background:#131921;
    color:white;
    padding:15px 40px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    font-size:28px;
    font-weight:bold;
}

.logo a{
    color:white;
    text-decoration:none;
}

.nav-links{
    display:flex;
    gap:20px;
    align-items:center;
}

.nav-links a{
    color:white;
    text-decoration:none;
    font-size:20px;
}

.cart{
    font-weight:bold;
}

/* PRODUCTS */

.products-container{
    width:95%;
    margin:30px auto;
}

.products-grid{
    display:grid;
    grid-template-columns:repeat(auto-fill,minmax(250px,1fr));
    gap:25px;
}

.product-card{
    background:white;
    border-radius:12px;
    overflow:hidden;
    box-shadow:0 3px 10px rgba(0,0,0,0.1);
    transition:0.3s;
}

.product-card:hover{
    transform:translateY(-5px);
}

.product-image{
    width:100%;
    height:250px;
    object-fit: contain;
    
}

.product-info{
    padding:15px;
}

.product-name{
    font-size:18px;
    font-weight:bold;
    margin-bottom:10px;
}

.product-price{
    color:#28a745;
    font-size:22px;
    margin-bottom:15px;
    text-align: center;
}

.btn{
    display:block;
    width:100%;
    padding:10px;
    border:none;
    border-radius:5px;
    text-align:center;
    text-decoration:none;
    color:white;
    cursor:pointer;
    margin-bottom:10px;
}

.view-btn{
    background:#007bff;
    font-size: 20px;
}

.view-btn:hover{
    background:#0069d9;
}

.cart-btn{
    background:#ff6b00;
    font-size: 20px;
}

.cart-btn:hover{
    background:#e65c00;
}

.added-btn{
    background:#28a745;
    font-size: 20px;
}

.no-products{
    text-align:center;
    padding:40px;
    font-size:22px;

}
.no-products-image{
    width:1000px;
    margin-bottom:20px;
    height:200px;
    boundary-radius:10px;
    text-align: center;
    position: center;

}

</style>

</head>
<body>

<!-- NAVBAR -->

<div class="navbar">

    <div class="logo">
        ShopWave♒︎ 
    </div>

    <div class="nav-links">
        <a href="index.php">Home</a>
        <a href="cart.php" class="cart">
            🛒 Cart (<?php echo $cartCount; ?>)
        </a>
        <a href="categories.php">Categories</a>
    </div>

</div>

<!-- PRODUCTS -->

<div class="products-container">

<div class="products-grid">

<?php
if(mysqli_num_rows($result) > 0)
{
    while($row = mysqli_fetch_assoc($result))
    {
        $product_id = (int) $row['product_id'];
?>

<div class="product-card">

    <img
        src="<?php echo $row['image_url']; ?>"
        class="product-image"
        alt="<?php echo $row['product_name']; ?>"
    >

    <div class="product-info">

        <div class="product-name">
            <?php echo $row['product_name']; ?>
        </div>

        <div class="product-price">
            ₹<?php echo number_format($row['price'],2); ?>
        </div>

        <a
            href="product_details.php?id=<?php echo $product_id; ?>"
            class="btn view-btn"
        >
            View Product
        </a>

        <?php if(isset($_SESSION['cart'][$product_id])) { ?>

            <a 
                href="product.php?action=remove&id=<?php echo $product_id; ?>"
                class="btn added-btn"
            >
                Added To Cart
            </a>

        <?php } else { ?>

            <a
                href="?add=<?php echo $product_id; ?>"
                class="btn cart-btn"
            >
                Add To Cart
            </a>

        <?php } ?>

       

    </div>

</div>

<?php
    }
}
else
{
    echo "<div class='no-products'>
            <img src='images/notfound.png' alt='No Products Found' class='no-products-image' style='background-color:transparent; width:1250px;height:450px; margin-bottom:0;background-position:center;padding:4px;gap:1px;'>
          </div>";
}
?>

</div>

</div>

</body>
</html>