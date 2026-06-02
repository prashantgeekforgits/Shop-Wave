<?php
session_start();

if(isset($_POST['save_address']))
{
    $_SESSION['address'] = [
        'fullname' => $_POST['fullname'],
        'save_address' => $_POST['address'],
    ];
        

    header("Location: checkout.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Delivery Address</title>

    <style>

    body{
        background:#f1f3f6;
        font-family:Arial,sans-serif;
        margin:0;
    }

    .container{
        width:600px;
        margin:40px auto;
        background:white;
        padding:30px;
        border-radius:10px;
        box-shadow:0 2px 10px rgba(0,0,0,0.15);
    }

    h2{
        margin-bottom:20px;
    }

    input,textarea{
        width:100%;
        padding:12px;
        margin-bottom:15px;
        border:1px solid #ddd;
        border-radius:5px;
        box-sizing:border-box;
    }

    button{
        width:100%;
        padding:14px;
        background:#fb641b;
        color:white;
        border:none;
        border-radius:5px;
        font-size:16px;
        cursor:pointer;
    }

    button:hover{
        opacity:.9;
    }

    </style>
</head>

<body>

<div class="container">

    <h2>Delivery Address</h2>

    <form method="POST">

        <input
        type="text"
        name="fullname"
        placeholder="Full Name"
        required>

        <input
        type="text"
        name="mobile"
        placeholder="Mobile Number"
        required>

        <input
        type="text"
        name="pincode"
        placeholder="Pincode"
        required>

        <input
        type="text"
        name="city"
        placeholder="City"
        required>

        <input
        type="text"
        name="state"
        placeholder="State"
        required>

        <textarea
        name="address"
        rows="4"
        placeholder="House No, Street, Area"
        required></textarea>

        <button type="submit" name="save_address" background-color="orange">
            SUbmit
        </button>

    </form>

</div>

</body>
</html>