<?php
include 'db.php';

$result = mysqli_query(
    $conn,
    "SELECT * FROM categories ORDER BY category_name"
);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Categories - ShopWave</title>
    <link rel="stylesheet" href="style.css">

    <style>
        .categories-container{
            width:90%;
            margin:30px auto;
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
            gap:20px;
        }

        .category-card{
            background:#fff;
            padding:20px;
            text-align:center;
            border-radius:8px;
            box-shadow:0 2px 8px rgba(0,0,0,0.1);
        }

        .category-card a{
            text-decoration:none;
            color:#333;
            font-size:20px;
            font-weight:bold;
        }

        .category-card:hover{
            transform:translateY(-5px);
        }
    </style>
</head>
<body>

<?php include 'navigationbar.php'; ?>

<h1 style="text-align:center;margin-top:20px;">
    Shop by Categories
</h1>

<div class="categories-container">

<?php while($row = mysqli_fetch_assoc($result)) { ?>

    <div class="category-card">

        <a href="product.php?category_id=<?php echo $row['category_id']; ?>">
            <?php echo $row['category_name']; ?>
        </a>

    </div>

<?php } ?>

</div>

</body>
</html>