<?php
 include("connection.php")

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;1,100&display=swap" rel="stylesheet">
</head>
<body>
    <div class="main">
        <div class="hero">
            <div class="hero__content">
                <img src="images/logo.webp" alt="logo">
                <h5 style="word-spacing: 1px;">&copy; centurion university of technology and management Andhra pradesh</h5>
            </div>
        </div>
        <div class="side-main">
            <div class="welcome">
                <h3>Welcome</h3>
            </div>
            <div class="side">
                <div class="container">
                    <form action="login.php" method="POST" onsubmit="return isvalid()" name="form"> <!-- Set the action to the route where you handle login -->
                        <div class="form-group">
                            <label for="role">Role:</label>
                            <select id="role" name="role">
                                <option value="admin">Admin</option>
                                <option value="user">User</option>
                            </select>
                        </div>
                        <div class="text">
                            <h3>Login Your Account</h3>
                        </div>
                        <div class="input-data">
                            <input type="text" name="username" id="username" required>
                            <div class="underline"></div>
                            <label for="username" >Username</label>
                        </div>
                        <div class="input-data">
                            <input type="password" name="password" id="password" required>
                            <div class="underline"></div>
                            <label for="password">Password</label>
                        </div>
                        <div class="btn">
                            <input type="submit" id="button" value="Login" name="submit"> <!-- Change type to "button" to prevent form submission -->
                            <a href="forgot_password.php" class="atag">Forget Password</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="js/login.js">
    
</script>

</body>
</html>
