<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile Page</title>
    <link rel="stylesheet" href="profile1.css">
</head>
<body>
    <header>
        <div class="header-container">
            <h1>Welcome to Your Profile</h1>
            <nav>
                <a href="welcome.jsp">Back</a>
                <a href="aboutUs.jsp">About Us</a>
               <a href="editProfile.jsp">Edit</a> <!-- Edit button added -->
                <a href="index.html">Logout</a>
            </nav>
        </div>
    </header>
    <main>
        <div class="profile-container">
            <h2>User Details</h2>
            <c:if test="${not empty errorMessage}">
                <p class="error">${errorMessage}</p>
            </c:if>
            <div class="user-details">
                <p><strong>ID:</strong> ${id}</p>
                <p><strong>Name:</strong> ${uname}</p>
               <p><i class="fas fa-envelope"></i> <strong>Email:</strong> ${uemail}</p>

                <p><strong>Gender:</strong> ${gender}</p>
                <p><strong>Address:</strong> ${address}</p>
                <p><strong>City:</strong> ${city}</p>
                <p><strong>Date of Joining:</strong> ${joinDate}</p>
                <p><strong>Mobile:</strong> ${mobile}</p>
            </div>
        </div>
    </main>
    <footer>
        <p>© 2024 Your Application. All rights reserved.</p>
    </footer>
</body>
</html>
