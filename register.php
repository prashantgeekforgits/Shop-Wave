<?php

include 'db.php';
session_start();

if(isset($_POST['continue']))
{
    $phone = mysqli_real_escape_string(
        $conn,
        $_POST['phone']
    );

    $check = mysqli_query(
        $conn,
        "SELECT * FROM users WHERE phone='$phone'"
    );

    if(mysqli_num_rows($check) > 0)
    {
        $user = mysqli_fetch_assoc($check);

        $_SESSION['user_id'] = $user['user_id'];
        $_SESSION['name'] = $user['first_name'];

        header("Location: index.php");
        exit();
    }
    else
    {
        header("Location: new_user.php?phone=$phone");
        exit();
    }
}
?>

<!--if(isset($_POST['register']))
{
    $first_name = mysqli_real_escape_string(
        $conn,
        $_POST['first_name']
    );

    $last_name = mysqli_real_escape_string(
        $conn,
        $_POST['last_name']
    );

    $email = mysqli_real_escape_string(
        $conn,
        $_POST['email']
    );

    $password = password_hash(
        $_POST['password'],
        PASSWORD_DEFAULT
    );

    $sql = "
    INSERT INTO users
    (
        first_name,
        last_name,
        email,
        password_hash
    )
    VALUES
    (
        '$first_name',
        '$last_name',
        '$email',
        '$password'
    )
    ";

    if(mysqli_query($conn,$sql))
    {
        header("Location: login.php");
        exit();
    }
}
?>-->


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<title>Register</title>
<style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
    background:#f1f3f6;
    font-family:'Roboto', Arial, sans-serif;
}

.login-container{
    width:850px;
    height:650px;
    margin:20px auto;
    background:#fff;
    display:flex;
    box-shadow:0 2px 10px rgba(0,0,0,0.15);
}

.left{
    width:35%;
    background:#2874f0;
    color:white;
    padding:40px;
    position:relative;
}

.left h2{
    font-size:28px;
    margin-bottom:15px;
}

.left p{
    font-size:18px;
    line-height:1.5;
}

.left img{
    position:absolute;
    bottom:30px;
    left:50%;
    transform:translateX(-50%);
    width:220px;
}

.right{
    width:65%;
    padding:50px;
}

.right input{
    width:100%;
    border:none;
    border-bottom:1px solid #ccc;
    padding:12px 0;
    font-size:16px;
    outline:none;
}

.right button{
    width:100%;
    background:#fb641b;
    color:white;
    border:none;
    padding:14px;
    margin-top:25px;
    cursor:pointer;
    font-size:16px;
}

.login-link{
    text-align:center;
    margin-top:40px;
}
.header{
    background-color: #2874f0;
    color:white;
    display:flex;
    align-items:center;
    justify-content:center;
    padding:15px 30px;
    margin-bottom:20px;
}

.logo{
    display:flex;
    flex-direction:column;
}

.logo h2{
    color:black;
    margin-right:18px;
    font-size:18px;
}

.logo p{
    margin:0;
    font-size:8px;
    letter-spacing:1px;
    color:black;
    margin-right:10px;
}

.search-box{
    display:flex;
    align-items:center;
}

.search-box input{
    width:400px;
    padding:12px;
    border:none;
    border-radius:3px;
}

.search-box button{
    width:auto;
    margin:0;
    padding:12px 15px;
    background:white;
    color:#2874f0;
}

.nav-links a{
    color:white;
    text-decoration:none;
    justify-content:space-between end;
    margin-left:20px;
    font-size:18px;
}
</style>
</head>
<body>

<div class="header">

    <div class="logo">
        <h2><em>ShopWave</em></h2>
        <p>RIDE THE WAVE OF DEALS</p>
    </div>

    <div class="search-box">
        <input
            type="text"
            placeholder="Search for Products, Brands and More">

        <button type="button">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
    </div>

    <div class="nav-links">

        <a href="cart.php">
            <i class="fa-solid fa-cart-shopping"></i>
            Cart
        </a>

        <a href="login.php">
            <i class="fa-solid fa-circle-user"></i>
            Login
        </a>

        <a href="register.php">
            Register
        </a>

    </div>

</div>

<div class="login-container">
    <div class="left">
        <h2>Looks like you're new here!</h2>
        <p>Sign up with your phone number to get started.</p>
        <img src="images/loginphotologoshop.png" alt="Login Image" width="200" height="200">
    </div>
    <div class="right">
        <form method="POST">

    <input
        type="text"
        name="mobile"
        placeholder="Enter phone Number"
        required>

    <br><br><br>

    <p style="font-size:11px;">
        By continuing, you agree to Shopwave's
        <a href="terms.php">Terms of Service</a>
        and
        <a href="privacy.php">Privacy Policy</a>.
    </p>

    <button
        type="submit"
        name="continue">
        Continue
    </button>

</form>

</div>

</body>
</html>