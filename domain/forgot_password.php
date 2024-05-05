<?php

session_start();

$message = '';

// Include PHPMailer Autoload file
require 'C:\xampp\htdocs\Admissionpr\PHPMailer-master\src\Exception.php';
require 'C:\xampp\htdocs\Admissionpr\PHPMailer-master\src\PHPMailer.php';
require 'C:\xampp\htdocs\Admissionpr\PHPMailer-master\src\SMTP.php';

// Include database connection file
include('connection.php');

// Check if the form is submitted and the email hasn't been sent yet
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['send_mail']) && !isset($_SESSION['email_sent'])) {
    // Get email from POST data
    $email = $_POST['email'];

    // Check if email exists in the database
    $sql = "SELECT * FROM users WHERE email = '$email'";
    $result = mysqli_query($conn, $sql);

    if (!$result) {
        $message = "Query error: " . mysqli_error($conn);
    } else if (mysqli_num_rows($result) > 0) {
        // Store email in session
        $_SESSION['email'] = $email;

        // Generate a random reset token
        $resetToken = mt_rand(100000, 999999);

        // Store the reset token in the database
        $updateSql = "UPDATE users SET reset_token = '$resetToken' WHERE email = '$email'";
        if (mysqli_query($conn, $updateSql)) {
            // If update successful, initialize PHPMailer
            $mail = new PHPMailer\PHPMailer\PHPMailer();

            // SMTP Configuration
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com'; // Your SMTP host
            $mail->SMTPAuth = true;
            $mail->Username = 'admissiondashboard76@gmail.com'; // Your SMTP username
            $mail->Password = 'ljhl bgbo wddr rvbt'; // Your SMTP password
            $mail->SMTPSecure = 'tls'; // TLS or SSL
            $mail->Port = 587; // SMTP port (TLS: 587, SSL: 465)

            // Sender and recipient
            $mail->setFrom('admissiondashboard76@gmail.com','Admission Dashboard'); // Your email and name
            $mail->addAddress($email); // Recipient email

            // Content
            $mail->isHTML(true);
            $mail->Subject = 'Verification Code for Password Reset';
            $mail->Body = 'Your verification code for password reset is: ' .$resetToken;

            // Send email
            if ($mail->send()) {
                $_SESSION['email_sent'] = true; // Set session variable to indicate email has been sent
                header("Location: tokenpage.php");
                exit();
            } else {
                $message = 'Failed to send email. Please try again.';
            }
        } else {
            $message = 'Failed to update reset token in the database: ' . mysqli_error($conn);
        }
    } else {
        $message = 'Email not found in the database. Please check your email address.';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="css/forgotpassword.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <form class="forgot-password-form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
            <h2>Forgot Password</h2>
            <p><?php echo $message; ?></p>
            <p>Enter your email address and we'll send you a link to reset your password.</p>
            <div class="input-group">
                <input type="email" id="email" name="email" placeholder="Your Email" required>
            </div>
            <button id="btn" type="submit" name="send_mail">Send Mail</button>
        </form>
    </div>
</body>
<script>
        // Check if the URL contains the tokenpage.php page
        if (window.location.href.indexOf("tokenpage.php") > 0) {
            // Display an alert message
            alert("Verification code sent successfully to your Gmail.");
        }
    </script>
</html>
