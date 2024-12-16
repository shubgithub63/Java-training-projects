<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="editProfile.css">
</head>
<body>
    <header>
        <div class="header-container">
            <h1>Edit Your Profile</h1>
            <nav>
                <a href="profile.jsp">Back to Profile</a>
                <a href="index.html">Logout</a>
            </nav>
        </div>
    </header>
    <main>
        <div class="profile-container">
            <h2>Edit Your Details</h2>
            <form action="updateProfile" method="post">
                <!-- Hidden field to pass user ID for updating specific user -->
                <input type="hidden" name="id" value="${id}">
                
                <!-- Editable form fields pre-populated with current values -->
                <label for="uname">Name:</label>
                <input type="text" id="uname" name="uname" value="<%= session.getAttribute("session_name") %>" required><br><br>

                <label for="uemail">Email:</label>
                <input type="email" id="uemail" name="uemail" value="<%= session.getAttribute("userEmail") %>" required><br><br>

                

                <label for="address">Address:</label><br>
                <textarea id="address" name="address" rows="4" cols="50"  required><%= session.getAttribute("userAdd") %></textarea><br><br>

                <label for="city">City:</label>
                <input type="text" id="city" name="city" value="<%= session.getAttribute("userCity") %>" required><br><br>

                <label for="mobilenum">Mobile:</label>
                <input type="text" id="mobilenum" name="mobilenum" value="<%= session.getAttribute("userMobile") %>" required><br><br>

                <input type="submit" value="Save Changes">
            </form>
        </div>
    </main>
    <footer>
        <p>© 2024 Your Application. All rights reserved.</p>
    </footer>
</body>
</html>
