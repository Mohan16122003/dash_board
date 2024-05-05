<?php
    include("connection.php");
    if(isset($_POST['submit'])){
        $username=$_POST['username'];
        $password=$_POST['password'];
        $role=$_POST['role'];

        $sql="SELECT * FROM users WHERE username='$username' AND password='$password'";
        $result=mysqli_query($conn,$sql);
        $row=mysqli_fetch_array($result,MYSQLI_ASSOC);
        $count=mysqli_num_rows($result);

        if($count==1){
            // Check if the role matches the role stored in the database
            if($row['role'] == $role){
                // Redirect to appropriate dashboard based on role
                if($role == 'admin'){
                    header("Location: admin_dashboard.php");
                } elseif($role == 'user'){
                    header("Location: user_dashboard.php");
                } 
            } else {
                // Role doesn't match, redirect back to login page
                echo '<script>
                        window.location.href="index.php";
                        alert("Login failed. Invalid role.");
                    </script>';
            }
        }
        else{
            // Invalid username or password
            echo '<script>
                    window.location.href="index.php";
                    alert("Login failed. Invalid username or password");
                </script>';
        }
    }
?>
