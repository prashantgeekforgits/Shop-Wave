<!DOCTYPE html>
<html>
<head>
 <title>My Ecommerce Website</title>
 <link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
 <link rel="stylesheet" href="style.css">
</head>
<body>
<?php include 'navbar.php'; ?>

<section class="hero">
    <div class="hero-content">
        <h1>🛒 ShopWave</h1>
        <h2>Big Savings on Electronics & Fashion</h2>
        <p>Discover the latest products at unbeatable prices.</p>

        <a href="product.php" class="btn">
            Shop Now
        </a>
        <a href="register.php" class="btn">
            Sign Up
            </a>
    </div>
</section>

<section class="features">
    <div>🚚 Free Delivery</div>
    <div>💳 Secure Payments</div>
    <div>🔄 Easy Returns</div>
    <div>⭐ Top Rated Products</div>
</section>

<section class="categories">
    <h2>Shop By Category</h2>

    <div class="category-container">

        <div class="category-card">
            📱
            <h3>Mobiles</h3>
        </div>

        <div class="category-card">
            💻
            <h3>Laptops</h3>
        </div>

        <div class="category-card">
            👟
            <h3>Shoes</h3>
        </div>

        <div class="category-card">
            👕
            <h3>Fashion</h3>
        </div>

    </div>
</section>

<section class="promo">
    <h2>🔥 Summer Sale</h2>
    <p>Up to 50% OFF on selected products</p>
</section>

<footer class="footer">
    <h3>ShopWave</h3>
    <p>Your One Stop Shopping Destination</p>
    <p>© 2026 ShopWave. All Rights Reserved.</p>
</footer>

</body>
</html>