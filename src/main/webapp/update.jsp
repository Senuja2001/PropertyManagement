<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>
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
    .btn-custom {
        background-color: #4caf50; 
        color: white;
    }
    .btn-custom:hover {
        background-color: #388e3c; 
    }
</style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Update Details</h1>
        <%
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String phone = request.getParameter("phone");
            String location = request.getParameter("location");
            String userName = request.getParameter("username");
            String password = request.getParameter("password");
        %>
        <div class="form-container">
            <form action="updateServelet" method="post" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="id">ID</label>
                    <input type="text" class="form-control" id="id" name="id" value="<%= id %>">
                </div>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="<%= name %>">
                </div>
                <div class="form-group">
                    <label for="email">E-mail</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= email %>">
                </div>
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <input type="text" class="form-control" id="gender" name="gender" value="<%= gender %>">
                </div>
                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="text" class="form-control" id="phone" name="phone" value="<%= phone %>">
                </div>
                <div class="form-group">
                    <label for="location">Location</label>
                    <input type="text" class="form-control" id="location" name="location" value="<%= location %>">
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" value="<%= userName %>">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" value="<%= password %>" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}" required>
                    <small id="passwordHelp" class="form-text text-muted">Password must be at least 8 characters long and include a mix of letters, numbers, and special characters.</small>
                </div>
                <div class="form-group">
                    <label for="passwordConfirm">Re-Enter Password</label>
                    <input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" value="<%= password %>" required>
                    <small id="passwordConfirmHelp" class="form-text text-muted"></small>
                </div>
                <button type="submit" class="btn btn-custom btn-block">Update Changes</button>
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function validateForm() {
            return validatePassword() && validateConfirmPassword();
        }

        function validatePassword() {
            const passwordInput = document.getElementById('password');
            const passwordHelp = document.getElementById('passwordHelp');

            const pattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&]).{8,}$/;
            if (pattern.test(passwordInput.value)) {
                passwordHelp.textContent = "Password looks good!";
                passwordHelp.style.color = "green";
                return true;
            } else {
                passwordHelp.textContent = "Password must be at least 8 characters long, contain an uppercase letter, a lowercase letter, a number, and a special character.";
                passwordHelp.style.color = "red";
                return false;
            }
        }

        function validateConfirmPassword() {
            const passwordInput = document.getElementById('password');
            const confirmPasswordInput = document.getElementById('passwordConfirm');
            const confirmPasswordHelp = document.getElementById('passwordConfirmHelp');

            if (passwordInput.value === confirmPasswordInput.value) {
                confirmPasswordHelp.textContent = "Passwords match!";
                confirmPasswordHelp.style.color = "green";
                return true;
            } else {
                confirmPasswordHelp.textContent = "Passwords do not match.";
                confirmPasswordHelp.style.color = "red";
                return false;
            }
        }

        document.getElementById('password').addEventListener('input', validatePassword);
        document.getElementById('passwordConfirm').addEventListener('input', validateConfirmPassword);
    </script>
</body>
</html>
