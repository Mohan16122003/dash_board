<?php
// Include the connection.php file
include 'connection.php';

// Initialize variables for form values
$registeredName = $registeredEmail = $registeredMobile = $state = $city = $status = $registrationFee = $registeredCampus = $school = $college = $country = $gender = $assignToCounsellor = $admissionCategory = $intermediateMarks = $department = '';

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the selected course from the form
    $selectedCourse = $_POST['courseDropdown'];

    // Prepare SQL INSERT statement based on the selected course
    switch ($selectedCourse) {
        case 'btech':
            $tableName = 'btech';
            break;
        case 'bsc':
            $tableName = 'bsc';
            break;
        case 'bba':
            $tableName = 'bba';
            break;
        default:
            echo "<script>alert('Please select a valid course.');</script>";
            break; // Break the switch statement without redirecting
    }

    if(isset($tableName)) {
        // Prepare a SQL INSERT statement
        $sql = "INSERT INTO $tableName (RegisteredName, RegisteredEmail, RegisteredMobile, State, City, Status, RegistrationFee, RegisteredCampus, School, College, Country, Gender, AssignToCounsellor, AdmissionCategory, IntermediateMarks, Department) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        // Initialize a prepared statement
        $stmt = $conn->prepare($sql);

        // Bind parameters with form values
        $stmt->bind_param("ssssssssssssssss", $registeredName, $registeredEmail, $registeredMobile, $state, $city, $status, $registrationFee, $registeredCampus, $school, $college, $country, $gender, $assignToCounsellor, $admissionCategory, $intermediateMarks, $department);

        // Set parameters and execute
        $registeredName = $_POST['registeredName'];
        $registeredEmail = $_POST['registeredEmail'];
        $registeredMobile = $_POST['registeredMobile'];
        $state = $_POST['state'];
        $city = $_POST['city'];
        $status = $_POST['status'];
        $registrationFee = $_POST['registrationFee'];
        $registeredCampus = $_POST['registeredCampus'];
        $school = $_POST['school'];
        $college = $_POST['college'];
        $country = $_POST['country'];
        $gender = $_POST['gender'];
        $assignToCounsellor = $_POST['assignToCounsellor'];
        $admissionCategory = $_POST['admissionCategory']; // Make sure this field is properly named in the HTML form
        $intermediateMarks = $_POST['intermediateMarks'];
        $department = $_POST['department']; // Make sure this field is properly named in the HTML form

        // Execute the prepared statement
        if ($stmt->execute()) {
            // Redirect to success page
            header("Location: manageapplicationsuccess.php");
            exit;
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        // Close the prepared statement
        $stmt->close();
    }

    // Close the database connection
    $conn->close();
}
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Applications</title>
    <link rel="stylesheet" href="css/manageapplications.css">
    <link rel="stylesheet" href="css/sidebar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
<div class="container">
    <h2>Manage Applications</h2>
    <div class="menu-btn">
        <i class="fas fa-bars"></i>
    </div>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
        <div class="container">
            <div class="course-dropdown">
                <select id="courseDropdown" name="courseDropdown" required>
                    <option value="select">Select Course</option>
                    <option value="btech">B.Tech</option>
                    <option value="bsc">B.Sc</option>
                    <option value="bba">BBA</option>
                </select>
            </div>
            <!-- Rest of your form -->
        </div>

        <div class="form-group">
            <label for="registeredName">Registered Name:</label>
            <input type="text" id="registeredName" name="registeredName" required>
        </div>
        <div class="form-group">
            <label for="registeredEmail">Registered Email:</label>
            <input type="email" id="registeredEmail" name="registeredEmail" required>
        </div>
        <div class="form-group">
            <label for="registeredMobile">Registered Mobile:</label>
            <input type="text" id="registeredMobile" name="registeredMobile" required>
        </div>
        <div class="form-group">
            <label for="state">State:</label>
            <input type="text" id="state" name="state" required>
        </div>
        <div class="form-group">
            <label for="city">City:</label>
            <input type="text" id="city" name="city" required>
        </div>
        <div class="form-group">
            <label for="status">Status:</label>
            <select id="status" name="status" required>
                <option value="select">Select</option>
                <option value="accepted" id="accepted">Accepted</option>
                <option value="declined" id="declined">Declined</option>
                <option value="pending"  id="pending">Pending</option>
            </select>
        </div>
        <div class="form-group">
            <label for="registrationFee">Registration Fee:</label>
            <select id="registrationFee" name="registrationFee" required>
                <option value="select">Select</option>
                <option value="paid">paid</option>
                <option value="Not paid">Not paid</option>
            </select>
        </div>
        <div class="form-group">
            <label for="registeredCampus">Registered Campus:</label>
            <select id="registeredCampus" name="registeredCampus" required>
                <option value="select">Select</option>
                <option value="Vizinagaram Campus" id="vzm">Vizinagaram Campus</option>
                <option value="Paralakhemundi Campus" id="pkd">Paralakhemundi Campus</option>
                <option value="Bhubaneshwar Campus" id="bbsr">Bhubaneshwar Campus</option>
            </select>
        </div>
        <div class="form-group">
            <label for="school">School:</label>
             <select id="school" name="school" required>
                <option value="select">Select</option>
                <option value="School Of Management" id="som">School Of Management</option>
                <option value="School of Paramedics & Allied Health Science" id="spahs">School of Paramedics & Allied Health Science</option>
                <option value="School of Engineering & Technology" id="soet">School of Engineering & Technology</option>
            </select>
        </div>
        <div class="form-group">
            <label for="college">College:</label>
            <input type="text" id="college" name="college" required>
        </div>
        <div class="form-group">
            <label for="country">Country:</label>
            <input type="text" id="country" name="country" required>
        </div>
        <div class="form-group">
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </div>
        <div class="form-group">
            <label for="assignToCounsellor">Assign to Counsellor:</label>
            <input type="text" id="assignToCounsellor" name="assignToCounsellor" required>
        </div>
        <div class="form-group">
            <label for="admissionCategory">Admission Category (EAPCET/Management Quota):</label>
            <select id="admissionCategory" name="admissionCategory" required>
                <option value="select">Select</option>
                <option value="eapcet" id="eapcet">EAPCET</option>
                <option value="Management Quota" id="management">Management Quota</option>
            </select>
        </div>
        <div class="form-group">
            <label for="intermediateMarks">Intermediate Marks (in %):</label>
            <input type="text" id="intermediateMarks" name="intermediateMarks" required>
        </div>
        <div class="form-group">
            <label for="Department">Department:</label>
            <input type="text" id="department" name="department" required>
        </div>
        <button type="submit" id="btn">Submit</button>
    </form>
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
            <div class="item"><a href=""><i class="fas fa-table"></i>Tables</a></div>
          
            <div class="item"><a href="manageapplication.php"><i class="fa fa-tasks"></i>ManageApplications</a></div>
            <div class="item"><a href="registrationform.php"><i class="fa fa-user-plus"></i>Create new admin or user</a></div>
            <div class="logout" onclick="confirmLogout()">
                  <i class="fa fa-sign-out"></i> logout
            </div>

        </div>
    </div>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="js/dashboard.js"></script>
    <script src="js/manageapplication.js"></script>
</body>
</html>
