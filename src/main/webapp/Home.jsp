<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property Management System</title>
   
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }

        .navbar-brand {
            font-weight: bold;
        }

        .jumbotron {
            background-image: url('');
            background-size: cover;
            background-position: center;
            color: white;
        }

        .jumbotron .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .card-title {
            font-size: 1.25rem;
        }

        .card-text {
            font-size: 1rem;
        }

        footer {
            background-color: #f8f9fa;
            padding: 1rem 0;
        }
		.card-img-top {
			width: 100%; 
            height: auto;
            max-width: 350px; 
            max-height: 150px; 
            object-fit: cover;
		}
		.jumbotron.jumbotron-fluid.text-center {
    color: black;
}

    </style>
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Online Property Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Properties</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-outline-primary ml-2" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-primary ml-2" href="Create.jsp">Sign Up</a>
                </li>
            </ul>
        </div>
    </nav>

    
    <div class="jumbotron jumbotron-fluid text-center">
        <div class="container">
            <h1 class="display-4">Welcome to LandLord</h1>
            <p class="lead">Your trusted partner in property management.</p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Get Started</a>
        </div>
    </div>

   
    <div class="container">
        <h2 class="text-center my-4">Featured Properties</h2>
        <div class="row">
          
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="download (1).jpeg" class="card-img-top" alt="Property Image">
                    <div class="card-body">
                        <h5 class="card-title">Beautiful Family House</h5>
                        <p class="card-text">Located in a friendly neighborhood, this house is perfect for families.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <!-- Property 2 -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="download (2).jpeg" class="card-img-top" alt="Property Image">
                    <div class="card-body">
                        <h5 class="card-title">Modern Apartment</h5>
                        <p class="card-text">A sleek and modern apartment located in the heart of the city.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <!-- Property 3 -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <img src="download.jpeg" class="card-img-top" alt="Property Image">
                    <div class="card-body">
                        <h5 class="card-title">Cozy Cottage</h5>
                        <p class="card-text">A charming cottage perfect for a quiet and peaceful retreat.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <footer class="bg-light text-center py-4">
        <p>&copy; 2024 PropertyManager. All Rights Reserved.</p>
    </footer>

    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
