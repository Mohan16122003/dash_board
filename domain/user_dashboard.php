<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_Dashboard</title>
    <link rel="stylesheet" href="css/sidebar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
    <div class="menu-btn">
        <i class="fas fa-bars"></i>
    </div>
    <div class="side-bar active">
        <header>
            <div class="close-btn">
               <i class="fas fa-times"></i> 
            </div>
            <img src="images/logo.webp" alt="">
        </header>
        <div class="menu">
            <div class="item" ><a href="admin_dashboard.php"><i class="fas fa-desktop"></i>Dashboard</a></div>
            <div class="item"><a href="tables.php"><i class="fas fa-table"></i>Tables</a></div>
            <div class="logout" onclick="confirmLogout()">
                  <i class="fa fa-sign-out"></i> logout
            </div>

        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="js/dashboard.js"></script>

</body>
</html>