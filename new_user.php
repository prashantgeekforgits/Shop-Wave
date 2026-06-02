<?php
include 'db.php';

if(isset($_POST['register']))
{
    $phone = $_POST['phone'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];

    mysqli_query(
        $conn,
        "INSERT INTO users
        (phone,first_name,last_name,email)
        VALUES
        ('$phone','$first_name','$last_name','$email')"
    );

    header("Location: login.php");
}
?>
<form method="POST">

    <input
        type="hidden"
        name=""
        value="<?php echo $_GET['phone']; ?>">

    <input
        type="text"
        name="first_name"
        placeholder="First Name"
        required>

    <input
        type="text"
        name="last_name"
        placeholder="Last Name"
        required>

    <input
        type="email"
        name="email"
        placeholder="Email"
        required>

    <button
        type="submit"
        name="register">
        Register
    </button>

</form>