<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e8f5e9; 
        color: #2e7d32; 
        margin: 0;
        padding: 20px;
    }
    .form-container {
        max-width: 500px;
        margin: 0 auto;
        background-color: #ffffff; 
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    button[type="submit"] {
        padding: 10px 20px;
        background-color: #4caf50; 
        color: white;
        border: none;
        cursor: pointer;
    }
    button[type="submit"]:hover {
        background-color: #388e3c; 
    }
</style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Add Customer</h1>
        <div class="form-container">
            <form class="sf1" action="CreateServlet" method="post"> <!-- use servlet name -->
                <div class="form-group">
                    <label for="name">Name :</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email :</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender :</label>
                    <input type="text" class="form-control" id="gender" name="gender" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone :</label>
                    <input type="text" class="form-control" id="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="location">Location :</label>
                    <input type="text" class="form-control" id="location" name="location" required>
                </div>
                <div class="form-group">
                    <label for="username">User name :</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password :</label>
                    <input type="password" class="form-control" id="password" name="password" required
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W_]).{8,}"
                           title="Must contain at least one number, one uppercase and lowercase letter, one special character, and at least 8 or more characters"
                           oninput="validatePassword()">
                    <small id="passwordHelp" class="form-text text-muted">
                        Password must be at least 8 characters long, contain an uppercase letter, a lowercase letter, a number, and a special character.
                    </small>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Re-enter Password :</label>
                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required oninput="validateConfirmPassword()">
                    <small id="confirmPasswordHelp" class="form-text text-muted"></small>
                </div>
                <button type="submit" class="btn btn-custom btn-block" name="submit" value="submit">Submit</button>
            </form>
        </div>
    </div>
    <script>
        function validatePassword() {
            const passwordInput = document.getElementById('password');
            const passwordHelp = document.getElementById('passwordHelp');

            const pattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W_]).{8,}$/;
            if (pattern.test(passwordInput.value)) {
                passwordHelp.textContent = "Password looks good!";
                passwordHelp.style.color = "green";
            } else {
                passwordHelp.textContent = "Password must be at least 8 characters long, contain an uppercase letter, a lowercase letter, a number, and a special character.";
                passwordHelp.style.color = "red";
            }
        }

        function validateConfirmPassword() {
            const passwordInput = document.getElementById('password');
            const confirmPasswordInput = document.getElementById('confirmPassword');
            const confirmPasswordHelp = document.getElementById('confirmPasswordHelp');

            if (passwordInput.value === confirmPasswordInput.value) {
                confirmPasswordHelp.textContent = "Passwords match!";
                confirmPasswordHelp.style.color = "green";
            } else {
                confirmPasswordHelp.textContent = "Passwords do not match.";
                confirmPasswordHelp.style.color = "red";
            }
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
