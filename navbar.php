<?php

if(session_status() == PHP_SESSION_NONE)
{
    session_start();
}

$cartCount =
isset($_SESSION['cart'])
? array_sum($_SESSION['cart'])
: 0;

?>

<header class="navbar">

    <div class="logo">
        <h2>🛒ShopWave</h2>
    </div>

    <nav>

        <ul class="nav-links">

            <li><a href="index.php">Home</a></li>

            <li><a href="product.php">Products</a></li>

            <!--<li>
                <a href="cart.php">
                    Cart (<?php echo $cartCount; ?>)
                </a>
            </li>-->

           
            <li>
                <a href="brands.php">
                    Brands We Provide
                </a>
            </li>

        </ul>

    </nav>

    <!--<div class="user-menu">

    <?php if(isset($_SESSION['user_id'])) { ?>

        Welcome,
        <strong>
            <?php echo $_SESSION['name']; ?>
        </strong>

        |

        <a href="logout.php">
            Logout
        </a>

    <?php } else { ?>

        <a href="login.php">
            <i class="fa-solid fa-circle-user";style="font-size: 0.8em;"></i>  Login
        </a>

        |

        <a href="register.php">
            Register
        </a>

        <ul class="nav-links">
            <li>
                <a href="cart.php">
                    <i class="fa-solid fa-cart-arrow-down"></i>
                    Cart (<?php echo $cartCount; ?>)
                </a>
            </li>
        </ul>



    <?php } ?>-->

    </div>

</header>