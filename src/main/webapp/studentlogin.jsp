<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        :root {
            /* Primary Color Palette */
            --primary-color: #2C3E50;       /* Deep Blue-Gray - Professional, authoritative */
            --secondary-color: #34495E;     /* Slightly lighter Blue-Gray */
            --accent-color: #3498DB;        /* Bright Blue - Energetic, modern */
            
            /* Background Colors */
            --background-light: #ECF0F1;    /* Soft Light Gray - Clean, minimalist */
            --background-white: #FFFFFF;    /* Pure White - For content areas */
            
            /* Text Colors */
            --text-dark: #2C3E50;           /* Dark Blue-Gray - Primary text */
            --text-muted: #7F8C8D;          /* Soft Gray - Secondary text */
            
            /* Interactive States */
            --hover-color: #2980B9;         /* Deeper Blue - For hover states */
            --success-color: #27AE60;       /* Green - For positive actions */
            --warning-color: #F39C12;       /* Orange - For warnings */
            --error-color: #E74C3C;         /* Red - For errors */
        }

        /* General body styling */
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: var(--background-light);
            color: var(--text-dark);
            margin: 0;
            padding: 0;
            padding-top: 60px;
        }

        /* Navbar Styling */
        .navbar {
            background-color: var(--primary-color);
            border-color: var(--secondary-color);
        }

        .navbar-brand {
            color: var(--background-white) !important;
            font-weight: bold;
        }

        .navbar-nav li a {
            color: var(--background-white) !important;
        }

        .navbar-nav li a:hover {
            background-color: var(--hover-color);
            color: var(--background-white) !important;
        }

        /* Main Content Styling */
        .container {
            max-width: 400px;
            margin: auto;
            background: var(--background-white);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: var(--primary-color);
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        /* Button Styling */
        .btn-primary {
            background-color: var(--accent-color);
            border-color: var(--accent-color);
            color: var(--background-white);
            font-size: 18px;
            font-weight: bold;
            padding: 12px 30px;
            border-radius: 25px;
        }

        .btn-primary:hover {
            background-color: var(--hover-color);
            border-color: var(--hover-color);
        }

        /* Form Control Styling */
        .form-control {
            background-color: var(--background-light);
            border: 1px solid var(--secondary-color);
            border-radius: 5px;
            padding: 10px;
        }

        .form-group label {
            color: var(--text-muted);
            font-weight: normal;
        }

        p.text-center a {
            color: var(--accent-color);
            font-weight: bold;
        }
    </style>
</head>
<body>
   

    <div class="container">
        <h2 class="text-center">Student Login</h2>
        <form action="/checkstudentlogin" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="semail" id="email" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="spwd" id="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
        <p class="text-center">Don't have an account? <a href="/studentreg">Sign Up</a></p>
    </div>
</body>
</html>
