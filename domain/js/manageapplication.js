// Add this script in your existing JavaScript file or create a new one
document.addEventListener("DOMContentLoaded", function() {
    // Get the link element
    const manageApplicationsLink = document.getElementById("manageApplicationsLink");

    // Add click event listener
    manageApplicationsLink.addEventListener("click", function(event) {
        event.preventDefault(); // Prevent the default behavior of the link

        // Show prompt to enter the course
        const course = prompt("Enter the course of the student (e.g., B.Tech, B.Sc, BBA):");
        if (course !== null) {
            // Redirect to the manage application page with the course added as a query parameter
            window.location.href = "manageapplication.php?course=" + encodeURIComponent(course);
        }
    });
});
