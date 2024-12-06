<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
</head>
<body>
    <h2>Welcome to Your Dashboard</h2>
    
    <c:if test="${not empty courses}">
        <h3>Your Courses:</h3>
        <table border="1">
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
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty courses}">
        <p>No courses found. Please check with your faculty.</p>
    </c:if>
</body>
</html>
