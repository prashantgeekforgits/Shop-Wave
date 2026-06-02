<?php
include 'db.php';

$cartCount = isset($_SESSION['cart'])
    ? array_sum($_SESSION['cart'])
    : 0;

$total = 0;
?>
<?php
include 'db.php';

$categories = mysqli_query(
    $conn,
    "SELECT * FROM categories ORDER BY category_name"
);
?>
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>
.navbar{
    background:white;
    color:yellow;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:15px 30px;
}

.logo-box{
    display:flex;
    background-color:#FFEB78;
    color:blue;
    padding:10px 20px;
    border-radius:4px;
    font-size:30px;
    font-weight:bold;
}

.search-box input{
    width:350px;
    padding:8px;
    border:none;
    border-radius:4px;
}

.nav-links a{
    color:black;
    background-color:white;
    padding:10px 15px;
    border-radius:4px;
    
    text-decoration:none;
    margin-left:20px;
    font-size:18px;
}

.nav-links a:hover{
    color:#ff9f00;
}


</style>

<div class="navbar">

    <div class="logo-box">
        <i class="fa-solid fa-cart-shopping"></i>
        ShopWave
    </div>

    <div class="search-box" style="border-radius:4px;border:1px solid blue;">
        <img src="images/sistrix-brands-solid.png" width="20px" height="20px" style="position:absolute; margin-left:4px; margin-top:6px;">
        <input type="text" placeholder="    Search for Products, Brands and More" aria-label="Search for products, brands and more">

        <button>
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
    </div>
    

    <div class="nav-links">
        <a href="categories.php">
    Categories
</a>

        <a href="cart.php">
            <i class="fa-solid fa-cart-shopping"></i>
            Cart
        </a>

        <a href="login.php">
            <i class="fa-solid fa-circle-user" style="font-size: 0.8em;"></i>  Login
        </a>

        <a href="register.php">
            Register
        </a>

    </div>

</div>