<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Faculty Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2 class="text-center">Faculty Dashboard</h2>

        <!-- Courses Section -->
        <div class="card mt-4">
            <div class="card-header">
                <h4>Courses</h4>
                <a href="addCourse" class="btn btn-primary float-right">+ Add Course</a>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Course Name</th>
                            <th>Description</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="course" items="${courses}">
                            <tr>
                                <td>${course.name}</td>
                                <td>${course.description}</td>
                                <td>
                                    <a href="editCourse?id=${course.id}" class="btn btn-warning btn-sm">Edit</a>
                                    <a href="deleteCourse?id=${course.id}" class="btn btn-danger btn-sm">Delete</a>
                                    <a href="viewStudents?courseId=${course.id}" class="btn btn-info btn-sm">View Students</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Assignments Section -->
        <div class="card mt-4">
            <div class="card-header">
                <h4>Assignments</h4>
                <a href="addAssignment" class="btn btn-primary float-right">+ Add Assignment</a>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Assignment Title</th>
                            <th>Deadline</th>
                            <th>Course</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="assignment" items="${assignments}">
                            <tr>
                                <td>${assignment.title}</td>
                                <td>${assignment.deadline}</td>
                                <td>${assignment.course.name}</td>
                                <td>
                                    <a href="editAssignment?id=${assignment.id}" class="btn btn-warning btn-sm">Edit</a>
                                    <a href="deleteAssignment?id=${assignment.id}" class="btn btn-danger btn-sm">Delete</a>
                                    <a href="viewSubmissions?assignmentId=${assignment.id}" class="btn btn-info btn-sm">View Submissions</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- JavaScript for Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
