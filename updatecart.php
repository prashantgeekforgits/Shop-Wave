<?php
session_start();

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
$action = $_GET['action'] ?? '';

if(isset($_SESSION['cart'][$id]))
{
    if($action == 'increase')
    {
        $_SESSION['cart'][$id]++;
    }
    elseif($action == 'decrease')
    {
        $_SESSION['cart'][$id]--;

        if($_SESSION['cart'][$id] <= 0)
        {
            unset($_SESSION['cart'][$id]);
        }
    }
    elseif($action == 'remove')
    {
        unset($_SESSION['cart'][$id]);
    }
}

header("Location: cart.php");
exit();
?>