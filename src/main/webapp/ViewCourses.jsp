<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Courses</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2 class="text-center">Available Courses</h2>
        <div class="card mt-4">
            <div class="card-header">
                <h4>Courses List</h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Course Name</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="course" items="${courses}">
                            <tr>
                                <td>${course.name}</td>
                                <td>${course.description}</td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty courses}">
                            <tr>
                                <td colspan="2" class="text-center">No courses available.</td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="mt-3 text-center">
            <a href="addCourse" class="btn btn-primary">Add New Course</a>
        </div>
    </div>
</body>
</html>
