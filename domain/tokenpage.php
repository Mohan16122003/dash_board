<?php
session_start();

$message = '';

// Include PHPMailer Autoload file
require 'C:\xampp\htdocs\Admissionpr\PHPMailer-master\src\Exception.php';
require 'C:\xampp\htdocs\Admissionpr\PHPMailer-master\src\PHPMailer.php';
require 'C:\xampp\htdocs\Admissionpr\PHPMailer-master\src\SMTP.php';

// Include database connection file
include('connection.php');

// Check if the email is set in session
if (!isset($_SESSION['email'])) {
    // Redirect to the appropriate page if email is not set
    header("Location: forgotpassword.php");
    exit();
}

$email = $_SESSION['email'];

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['verify_code'])) {
    // Get email and verification code from the form
  // Assuming you stored the email in the session during the initial process
    $enteredCode = $_POST['verification_code'];

    // Check if the entered code matches the reset token for the provided email
    $sql = "SELECT * FROM users WHERE email = '$email' AND reset_token = '$enteredCode'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        // Verification successful
        header("Location: reset_password.php?email=$email"); // Redirect to reset password page
        exit();
    } else {
        // Verification failed
        $message = "Verification code is incorrect. Please try again.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verification Code</title>
    <link rel="stylesheet" href="css/tokenpage.css"> <!-- Link to your CSS file -->
</head>
<body>
    <div class="container">
        <h2>Verification Code</h2>
        <form class="verification-form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group">
                <p>Please check Your mail inbox to know verification code</p>
                <label for="verification_code">Enter Verification Code:</label>
                <input type="text" id="verification_code" name="verification_code" required>
            </div>
            <div class="form-group">
                <button type="submit" name="verify_code">Verify Code</button>
            </div>
        </form>
        <?php if (!empty($message)) { ?>
            <p><?php echo $message; ?></p>
        <?php } ?>
    </div>
    <script>
          alert("Email sent successfully. Check your inbox for the verification code.");
    </script>';
</body>
</html>
