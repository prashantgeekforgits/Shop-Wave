<?php

session_start();
include 'db.php';

if(!isset($_SESSION['cart']) || empty($_SESSION['cart']))
{
    die("Cart is empty");
}





if(isset($_SESSION['user_id']))
{
    $user_id = $_SESSION['user_id'];

    $check_sql = "
    SELECT *
    FROM user_addresses
    WHERE user_id = $user_id
    ";

    $check_result =
    mysqli_query($conn,$check_sql);

    if(mysqli_num_rows($check_result) > 0)
    {
        mysqli_query(
            $conn,
            "
            UPDATE user_addresses
            SET
            full_name='$name',
            address='$address'
            WHERE user_id=$user_id
            "
        );
    }
    else
    {
        mysqli_query(
            $conn,
            "
            INSERT INTO user_addresses
            (
                user_id,
                full_name,
                address
            )
            VALUES
            (
                '$user_id',
                '$name',
                '$address'
            )
            "
        );
    }
}

$payment_method = mysqli_real_escape_string(
    $conn,
    $_POST['payment_method']
);

$user_id =
isset($_SESSION['user_id'])
? $_SESSION['user_id']
: NULL;

$total = 0;

foreach($_SESSION['cart'] as $product_id => $quantity)
{
    $sql =
    "SELECT *
     FROM products
     WHERE product_id = $product_id";

    $result =
    mysqli_query($conn,$sql);

    $product =
    mysqli_fetch_assoc($result);

    $total +=
    $product['price'] * $quantity;
}

/* Create Order */

$order_number =
"SW" . time();

$order_sql = "
INSERT INTO orders
(
    user_id,
    order_number,
    subtotal,
    grand_total,
    order_status
)
VALUES
(
    '$user_id',
    '$order_number',
    '$total',
    '$total',
    'pending'
)
";

mysqli_query($conn,$order_sql);

$order_id =
mysqli_insert_id($conn);

/* Save Order Items */

foreach($_SESSION['cart'] as $product_id => $quantity)
{
    $sql =
    "SELECT *
     FROM products
     WHERE product_id = $product_id";

    $result =
    mysqli_query($conn,$sql);

    $product =
    mysqli_fetch_assoc($result);

    $price =
    $product['price'];

    $item_sql = "
    INSERT INTO order_items
    (
        order_id,
        product_id,
        quantity,
        price
    )
    VALUES
    (    
        '$order_id',
        '$product_id',
        '$quantity',
        '$price'
    )
    ";

    mysqli_query(
        $conn,
        $item_sql
    );
}

/* Clear Cart */

unset($_SESSION['cart']);

?>

<!DOCTYPE html>
<html>
<head>

<title>Order Success</title>

<link rel="stylesheet"
href="style.css">

</head>
<body>

<center>

<br><br>

<h1>
✅ Order Placed Successfully
</h1>

<h3>
Order Number:
<?php echo $order_number; ?>
</h3>

<p>
Thank you for shopping with ShopWave.
</p>

<p>
Payment Method:
<strong>
<?php echo strtoupper($payment_method); ?>
</strong>
</p>

<p>
Total Amount:
<strong>
₹<?php echo number_format($total); ?>
</strong>
</p>

<br>

<a href="index.php"
class="btn">
Continue Shopping
</a>

</center>

</body>
</html>