
    function idvalid() {
        var username = document.form.username.value;
        var password = document.form.password.value;
        var role = document.form.role.value;

        if (username === "" || password === "") {
            alert("Username and password fields are empty");
            return false;
        }

        if (role !== "admin" && role !== "user") {
            alert("Please select a valid role (admin or user)");
            return false;
        }
    }



