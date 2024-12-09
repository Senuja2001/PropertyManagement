<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Management</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="background">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Log In</button>
            </div>
            <div class="social-icons">
                <img src="fb.png" alt="Facebook">
                <img src="gp.png" alt="Google+">
            </div>
                
            <form id="login" class="input-group" action="LoginServlet" method="post">
                <input type="text" class="input-field"  name="uid" placeholder="User Id" required>
                <input type="password" class="input-field" name="pass" placeholder="Enter Password" required>
                <input type="checkbox" class="check-box"><span>Remember Password</span>
                <button type="submit" class="submit-btn" value="login">Log in</button>
            </form>
        </div>
    </div>
    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }

        function register(){
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }
    </script>
</body>
</html>
