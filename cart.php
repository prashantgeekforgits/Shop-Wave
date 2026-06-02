<?php
session_start();
include 'db.php';

$cartCount = isset($_SESSION['cart'])
    ? array_sum($_SESSION['cart'])
    : 0;

$total = 0;
?>

<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>

    <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

    body{
        background:#f1f3f6;
        font-family:Arial,sans-serif;
        margin:0;
    }

    .cart-page{
        width:95%;
        margin:20px auto;
        display:flex;
        gap:20px;
    }

    .cart-products{
        width:75%;
    }

    .cart-summary{
        width:25%;
        background:white;
        padding:25px;
        height:fit-content;
        box-shadow:0 1px 8px rgba(0,0,0,0.15);
        position:sticky;
        top:20px;
    }

    .cart-summary h2{
        color:#878787;
        font-size:18px;
    }

    .cart-item{
        background:white;
        margin-bottom:15px;
        padding:20px;
        box-shadow:0 1px 8px rgba(0,0,0,0.15);
    }

    .cart-folder{
        display:flex;
        align-items:center;
        gap:20px;
    }

    .cart-folder img{
        width:180px;
        height:180px;
        object-fit:contain;
    }

    .product-info{
        flex:1;
    }

    .product-info h2{
        margin:0;
    }

    .qty-btn{
        background:#ff5722;
        color:white;
        padding:8px 12px;
        text-decoration:none;
        border-radius:4px;
        margin-right:5px;
    }

    .buy-btn{
        display:block;
        text-align:center;
        background:#ffd814;
        color:black;
        padding:12px;
        text-decoration:none;
        border-radius:25px;
        font-weight:bold;
    }
    .add-btn{
        width: 80px
        display:block;
        text-align:center;
        background-: blue;
        color:black;
        height:15px;
        padding:12px;
        text-decoration:none;
        border-radius:5px;
        font-size:18px;
}

    .cart-title{
        background:white;
        padding:20px;
        margin-bottom:15px;
        box-shadow:0 1px 8px rgba(0,0,0,0.15);
    }

    .price{
        font-size:22px;
        font-weight:bold;
        color:#B12704;
    }

    </style>
</head>

<body>

<?php include 'navigationbar.php'; ?>

<?php if(isset($_SESSION['cart']) && !empty($_SESSION['cart'])) { ?>

<div class="cart-page">

    <div class="cart-products">

        <div class="cart-title">
            <h1>Shopping Cart</h1>
            <p style="text-align:right;font-size:20px;">
                Price
            </p>
        </div>

        <?php
        foreach($_SESSION['cart'] as $product_id => $quantity)
        {
            $product_id = (int)$product_id;

            $sql = "
            SELECT p.*, pi.image_url
            FROM products p
            LEFT JOIN product_images pi
            ON p.product_id = pi.product_id
            AND pi.is_main = 1
            WHERE p.product_id = $product_id
            ";

            $result = mysqli_query($conn,$sql);

            if(!$result || mysqli_num_rows($result) == 0){
                continue;
            }

            $product = mysqli_fetch_assoc($result);

            $subtotal = $product['price'] * $quantity;
            $total += $subtotal;
        ?>

        <div class="cart-item">

            <div class="cart-folder">

                <img src="<?php echo $product['image_url']; ?>" alt="">

                <div class="product-info">

                    <h2>
                        <?php echo $product['product_name']; ?>
                    </h2>

                    <p>
                        Quantity:
                        <?php echo $quantity; ?>
                    </p>

                    <p class="price">
                        ₹<?php echo number_format($subtotal); ?>
                    </p>

                    <br>

                    <a class="qty-btn"
                    href="updateCart.php?action=increase&id=<?php echo $product_id; ?>">
                    +
                    </a>

                    <a class="qty-btn"
                    href="updateCart.php?action=decrease&id=<?php echo $product_id; ?>">
                    -
                    </a>

                    <a class="qty-btn"
                    href="updateCart.php?action=remove&id=<?php echo $product_id; ?>">
                    <i class="fa-solid fa-trash"></i>
                    </a>

                </div>

            </div>

        </div>

        <?php } ?>

    </div>

    <div class="cart-summary">

        <h2>PRICE DETAILS</h2>
        <hr>

        <p>
            Subtotal (<?php echo $cartCount; ?> items)
            <span style="float:right;">
                ₹<?php echo number_format($total); ?>
            </span>
        </p>

        <p>
            Delivery Charges
            <span style="float:right;color:green;">
                FREE
            </span>
        </p>

        <hr>

        <h3>
            Total Amount
            <span style="float:right;">
                ₹<?php echo number_format($total); ?>
            </span>
        </h3>

        <br>

        <a href="checkout.php" class="buy-btn">
            Proceed To Checkout
        </a>

    </div>

</div>

<?php } else { ?>

<center style="margin-top:50px;">
    
    <img src="images/emptymycart.jpg" width="300">
    <h2>Your Cart Is Empty</h2>
    <a href="product.php" class="add-btn" style="background-color: blue; font-size: 30px;color: white";>
        Add items
    </a>
</center>

<?php } ?>

</body>
</html>