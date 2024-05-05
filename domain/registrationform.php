<?php

include("connection.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];
    $role = $_POST['role'];

    // Check if passwords match
    if ($password != $confirm_password) {
        // Alert if passwords do not match
        echo '<script>alert("Error: Passwords do not match");</script>';
    } else {
        // Check if username already exists
        $check_query = "SELECT * FROM users WHERE username = '$username'";
        $check_result = $conn->query($check_query);
        if ($check_result->num_rows > 0) {
            // Username already exists, show alert
            echo '<script>alert("Username already exists. Please choose a different username.");</script>';
        } else {
            // Username is available, proceed with insert
            $sql = "INSERT INTO users (username, email, password, role) VALUES ('$username', '$email', '$password', '$role')";
            if ($conn->query($sql) === TRUE) {
                // Redirect user to a success page
                header("Location: success.php");
                exit();
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
    }
}
$conn->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="css/registrationform.css"> <!-- Include your CSS file here -->
</head>
<body>
    <h2>Registration Form</h2>
    <form action="registrationform.php" method="POST">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password:</label>
            <input type="password" id="confirm_password" name="confirm_password" required>
        </div>
        <div class="form-group">
            <label>Role:</label><br>
            <input type="radio" id="admin" name="role" value="admin" required>
            <label for="admin">Admin</label><br>
            <input type="radio" id="user" name="role" value="user" required>
            <label for="user">User</label><br>
            <!-- Add more roles as needed -->
        </div>
        <button type="submit">Register</button>
    </form>
</body>
</html>
