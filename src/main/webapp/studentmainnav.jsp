<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .dashboard-header {
            background-color: #d32f2f;
            color: white;
            padding: 10px;
        }
        .card {
            margin: 10px;
        }
        .navigation {
            border-right: 1px solid #ddd;
            height: 100%;
            padding: 10px;
        }
    </style>
</head>
<body>
    <header class="dashboard-header d-flex justify-content-between align-items-center">
        <h1>Dashboard</h1>
        <span>Student Name - ID</span>
    </header>

    <div class="container-fluid mt-3">
        <div class="row">
            <!-- Navigation -->
            <div class="col-md-3 navigation">
                <h5>Navigation</h5>
                <ul class="list-group">
                    <li class="list-group-item">
                        <a href="myCourses.jsp" class="text-decoration-none">My Courses</a>
                    </li>
                    <li class="list-group-item">
                        <a href="timeline.jsp" class="text-decoration-none">Timeline</a>
                    </li>
                    <li class="list-group-item">
                        <a href="help.jsp" class="text-decoration-none">Help</a>
                    </li>
                </ul>
            </div>

            <!-- Main Content -->
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-12">
                        <h5>Timeline</h5>
                        <button class="btn btn-success">Filter</button>
                    </div>
                </div>

                <div class="row mt-4">
                    <div class="col-md-12">
                        <h5>Recently Accessed Items</h5>
                        <div class="d-flex flex-wrap">
                            <div class="card" style="width: 10rem;">
                                <div class="card-body">
                                    <h6 class="card-title">Assignment 1</h6>
                                    <p class="card-text">Course Name</p>
                                </div>
                            </div>
                            <div class="card" style="width: 10rem;">
                                <div class="card-body">
                                    <h6 class="card-title">Quiz 1</h6>
                                    <p class="card-text">Course Name</p>
                                </div>
                            </div>
                            <!-- Add more cards here -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
