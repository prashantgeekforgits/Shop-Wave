<?php

session_start();

include 'db.php';

if(isset($_POST['login']))
{
    $email = mysqli_real_escape_string(
        $conn,
        $_POST['email']
    );

    $password = $_POST['password'];

    $sql = "
    SELECT *
    FROM users
    WHERE email='$email'
    AND status='active'
    ";

    $result = mysqli_query($conn,$sql);

    if(mysqli_num_rows($result)==1)
    {
        $user = mysqli_fetch_assoc($result);

        if(
            password_verify(
                $password,
                $user['password_hash']
            )
        )
        {
            $_SESSION['user_id']
                = $user['user_id'];

            $_SESSION['name']
                = $user['first_name']
                . " "
                . $user['last_name'];

           
            header("Location: index.php");
            exit();
        }
        else
        {
            $error = "Wrong Password";
        }
    }
    else
    {
        $error = "User Not Found";
    }
}

?>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <title>Login Page</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            background:#f1f3f6;
            font-family: 'Roboto',Arial, sans-serif;
        }

        .login-box{
            width:850px;
            height:650px;
            margin:16px auto;
            display:flex;
            background:white;
            box-shadow:0 2px 10px rgba(0,0,0,0.15);
        }
        .left{
    width:35%;
    background:#2874f0;
    color:white;
    padding:40px;
    position:relative;
    
}

        .left p{
    font-size:18px;
    line-height:1.5;
        }

        .left h1{
    font-size:28px;
            margin-bottom:15px;
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

        input{
            width:100%;
            border:none;
            border-bottom:1px solid #ccc;
            padding:12px 0;
            font-size:16px;
            outline:none;
        }

        button{
            width:100%;
            padding:14px;
            margin-top:30px;
            background: #fb641b;
            color:white;
            border:none;
            margin-top:25px;
            cursor:pointer;
            font-size:16px;
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
    padding:10px;
    border:none;
    border-radius:3px;
}

.search-box button{
    width:auto;
    margin:0;
    padding:10px 15px;
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
    <!--<?php include 'navigationbar.php'; ?>-->

    <div class="login-box">

        <div class="left">
            <h1>Login</h1>
            <br>

            <p> Get access to your Orders,<br>
                Wishlist and Recommendations
            </p>
            <img src="images\loginphotologoshop.png" alt="Login Image" width="200" height="200">
        </div>

        <div class="right">

            <input
            type="text"
            placeholder="Enter Email/Mobile Number">

            <br><br><br>

            <p style="font-size: 11px;">By continuing, you agree to Shopwave's <a href="terms.php" target="_blank">Terms of Service</a> and <a href="privacy.php" target="_blank">Privacy Policy</a>.</p>

            <button>
                Request OTP
            </button>

            <br><br><br>

            <center>
                <p>
                    <a href="register.php" style="color: #2874f0;margin-bottom:60px;">
                        <strong>New to Shopwave?Create an account</strong>
                    </a>
                </p>
            </center>

        </div>

    </div>

</body>
</html>