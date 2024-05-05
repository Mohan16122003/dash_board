<?php
session_start();

$message = '';

// Include database connection file
include('connection.php');

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['set_password'])) {
    // Get email from session and new password from POST data
    $email = $_SESSION['email'];
    $newPassword = $_POST['new_password'];
    $confirmPassword = $_POST['confirm_password'];

    // Check if new password matches confirm password
    if ($newPassword === $confirmPassword) {
        // Update the password in the database
        $updateSql = "UPDATE users SET password = '$newPassword', reset_token = NULL WHERE email = '$email'";
        if (mysqli_query($conn, $updateSql)) {
            // Password set successfully
            echo '<script>alert("Password set successfully");</script>';
            echo '<script>window.location.href = "index.php";</script>';
            exit; // Stop further execution
        } else {
            $message = "Error setting password: " . mysqli_error($conn);
        }
    } else {
        echo '<script>alert("New password and confirm password do not match.");</script>';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Password Change</title>
<link rel="stylesheet" type="text/css" href="css/reset_password.css">
</head>
<body>

<div class="container">
    <h2>Password Change</h2>
    <form action="#" method="post">
        <div class="form-group">
            <label for="new-password">New Password</label>
            <input type="password" id="new-password" name="new_password" required>
        </div>
        <div class="form-group">
            <label for="confirm-password">Confirm Password</label>
            <input type="password" id="confirm-password" name="confirm_password" required>
        </div>
        <button type="submit" class="btn" name="set_password">Change Password</button>
    </form>
</div>

</body>
</html>
