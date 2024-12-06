<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            padding-top: 60px;
        }
        .navbar-brand {
            font-weight: bold;
        }
        .main-content {
            padding: 60px 20px;
        }
        .main-content h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 30px;
        }
        .main-content p {
            font-size: 18px;
            color: #666;
            margin-bottom: 40px;
        }
        .btn-primary {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-control {
            font-size: 16px;
            padding: 10px;
        }
        /* Make the labels fixed with the input fields */
        .form-label {
            text-align: left;
            font-weight: bold;
            margin-bottom: 8px;
            display: block;
        }
        .container {
            max-width: 600px;
            margin-top: 30px;
        }
        .navbar {
            margin-bottom: 0;
        }
        .navbar-nav li a {
            font-size: 16px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Assignment Portal</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="/studentlogin">Student Login</a></li>
                <li><a href="/facultylogin">Faculty Login</a></li>
                <li><a href="/facultyreg">Faculty Signup</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container main-content">
        <h1>Student Registration</h1>
        <form action="/insertstudent" method="POST">
            <!-- First Name -->
            <div class="form-group">
                <label for="firstName" class="form-label">First Name:</label>
                <input type="text" id="firstName" name="sfirstname" class="form-control" required>
            </div>
            
            <!-- Last Name -->
            <div class="form-group">
                <label for="lastName" class="form-label">Last Name:</label>
                <input type="text" id="lastName" name="slastname" class="form-control" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email" class="form-label">Email:</label>
                <input type="email" id="email" name="semail" class="form-control" required>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password" class="form-label">Password:</label>
                <input type="password" id="password" name="spwd" class="form-control" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>
</body>
</html>
