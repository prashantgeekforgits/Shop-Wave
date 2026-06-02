<?php

session_start();
include 'db.php';

$full_name = '';
$address = '';


if(isset($_SESSION['user_id']))
{
    $user_id = $_SESSION['user_id'];

    $sql = "
    SELECT *
    FROM user_addresses
    WHERE user_id = $user_id
    ORDER BY address_id DESC
    LIMIT 1
    ";

    $result = mysqli_query($conn,$sql);
    $address = mysqli_fetch_assoc($result);

    if(mysqli_num_rows($result) > 0)
    {
        $saved_address =
        mysqli_fetch_assoc($result);

        $full_name =
        $saved_address['full_name'];

        $user_address =
        $saved_address['address'];
    }
}

if(!isset($_SESSION['cart']) || empty($_SESSION['cart']))
{
    die("
    <center>
        <h2>Your Cart Is Empty</h2>
        <a href='product.php'>Continue Shopping</a>
    </center>
    ");
}

$total = 0;

?>

<!DOCTYPE html>
<html>
<head>

<title>Secure Checkout - ShopWave</title>

<link rel="stylesheet" href="style.css">

<style>

body{
    background:#f3f3f3;
    font-family:Arial,sans-serif;
}

.checkout-page{
    width:98%;
    margin:20px auto;
    display:flex;
    gap:20px;
    height:fit-content;
}

.checkout-left{
    width:65%;
}

.checkout-right{
    width:33%;
    background:white;
    padding:20px;
    border-radius:0px;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
    height:fit-content;
}

.address-box,
.payment-box{
    width:98%;
    background:white;
    padding:15px;
    margin-bottom:10px;
    border-radius:0;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
    box-sizing: inherit;
    box-position: top;
    height:fit-content;
}

.payment-option{
    display:flex;
    align-items:center;
    gap:10px;
    padding:12px;
    border:1px solid #ddd;
    border-radius:8px;
    margin-bottom:10px;

}

.order-product{
    display:flex;
    align-items:center;
    gap:10px;
    margin-bottom:10px;
    padding:12px;

}

.order-product img{
    width:40px;
    height:40px;
    object-fit:contain;
}

.place-order-btn{
    width:100%;
    padding:15px;
    background:#ffd814;
    border:none;
    border-radius:20px;
    font-size:16px;
    cursor:pointer;
}

.place-order-btn:hover{
    background:#f7ca00;
}

</style>

</head>

<body>

<?php include 'includes/navbar.php'; ?>
<div class="checkout-page">
<div class="address-box">

<h2>📍 Delivery Address</h2>

<?php if($address) { ?>

<p><?php echo $address['full_name']; ?></p>

    <p>


        <?php echo $address['address_line1']; ?>

    </p>

    <p>

        <?php echo $address['address_line2']; ?>

    </p>
    <p>
<?php echo $address['city']; ?>,
<?php echo $address['state']; ?>
-
<?php echo $address['postal_code']; ?>
</p>
    <p><?php echo $address['phone']; ?></p>

    <a href="user_address.php">
        Change Address
    </a>

<?php } else { ?>

    <p>No Address Saved</p>

    <a href="user_address.php">
        Add Address
    </a>

<?php } ?>

</div>
</div>

<form action="placeOrder.php" method="POST">

<div class="checkout-page">

    <div class="checkout-left">

        <div class="payment-box">

            <h2>Payment Method</h2>

            <label class="payment-option">
                <input
                    type="radio"
                    name="payment_method"
                    value="cod"
                    checked
                >
                💵 Cash On Delivery
            </label>

            <label class="payment-option">
                <input
                    type="radio"
                    name="payment_method"
                    value="upi"
                >
                📱 UPI (GPay / PhonePe / Paytm)
            </label>

            <label class="payment-option">
                <input
                    type="radio"
                    name="payment_method"
                    value="card"
                >
                💳 Credit / Debit Card
            </label>

            <label class="payment-option">
                <input
                    type="radio"
                    name="payment_method"
                    value="netbanking"
                >
                🏦 Net Banking
            </label>

        </div>

    </div>

    <div class="checkout-right">

        <h2>Order Summary</h2>

        <hr>

<?php

foreach($_SESSION['cart'] as $product_id => $quantity)
{
    $sql = "
    SELECT p.*, pi.image_url
    FROM products p
    LEFT JOIN product_images pi
    ON p.product_id = pi.product_id
    AND pi.is_main = 1
    WHERE p.product_id = $product_id
    ";

    $result = mysqli_query($conn,$sql);

    $product = mysqli_fetch_assoc($result);

    $subtotal =
    $product['price'] * $quantity;

    $total += $subtotal;

?>

<div class="order-product">

    <img
        src="<?php echo $product['image_url']; ?>"
        alt="<?php echo $product['product_name']; ?>"
    >

    <div>

        <strong>
            <?php echo $product['product_name']; ?>
        </strong>

        <br>

        Qty:
        <?php echo $quantity; ?>

        <br>

        ₹<?php echo number_format($subtotal); ?>

    </div>
</div>

<?php
}
?>

        <hr>

        <h3>
            Order Total:
            ₹<?php echo number_format($total); ?>
        </h3>

        <button
            type="submit"
            class="place-order-btn"
        >
            Place Order
        </button>

    </div>

</div>


</form>

</body>
</html>