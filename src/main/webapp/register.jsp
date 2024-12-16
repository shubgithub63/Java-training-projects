<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>
<!-- Navbar Section -->
<nav class="navbar">
    <div class="navbar-logo">
        <img src="https://th.bing.com/th/id/OIP.o8uhEeq7OXXTPPJpkSyC1QHaHa?pid=ImgDet&w=191&h=191&c=7" alt="Logo" class="logo">
        <h1 class="navbar-title">nterraIT</h1>
    </div>
    <div class="navbar-contact">
        <span>Email: contact@example.com</span>
        <span>Phone: +1234567890</span>
    </div>
</nav>
<br><br><br>
 <div class="page-container">
        <!-- Registration Heading -->
        <h1 class="heading">Registration Form</h1>

        <!-- Form Container -->
        <div class="form-container">
     
    <form action="regForm" method="post">
        <!-- Name Field -->
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required placeholder="Enter your name"><br><br>

        <!-- Email Field -->
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required placeholder="Enter your email"><br><br>

        <!-- Password Field -->
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required placeholder="Enter your password" minlength="8"><br><br>

        <!-- Gender Field -->
        <label for="gender">Gender:</label><br>
        <input type="radio" id="male" name="gender" value="Male">
        <label for="male">Male</label>
        <input type="radio" id="female" name="gender" value="Female">
        <label for="female">Female</label><br><br>

        <!-- Address Field -->
        <label for="address">Address:</label><br>
        <textarea id="address" name="address" rows="4" cols="50" required placeholder="Enter your address"></textarea><br><br>

        <!-- City Dropdown -->
        <label for="city">City:</label><br>
        <select id="city" name="city" required>
            <option value="">Select your city</option>
            <option value="New York">New York</option>
            <option value="Los Angeles">Los Angeles</option>
            <option value="Chicago">Chicago</option>
            <option value="Houston">Houston</option>
            <option value="Phoenix">Phoenix</option>
        </select><br><br>

        <!-- Date of Joining Field -->
        <label for="doj">Date of Joining:</label><br>
        <input type="date" id="doj" name="doj" required><br><br>

        <!-- Mobile Number Field -->
        <label for="mobilenum">Mobile Number:</label><br>
        <input type="tel" id="mobilenum" name="mobilenum" pattern="[0-9]{10}" required placeholder="Enter your 10-digit mobile number"><br><br>

        <!-- Submit Button -->
        <a> <input type="submit" value="Register" ></a>
        <a href="index.html" class="button">Back</a>
    </form>
    <p id="successMessage" style="color: green; display: none;">User Registered Successfully!</p>
    </div>
    </div>
     <script>
        // Get current date
        var today = new Date();
        
        // Format the date in YYYY-MM-DD format (this will disable future dates)
        var dd = String(today.getDate()).padStart(2, '0');
        var mm = String(today.getMonth() + 1).padStart(2, '0'); // January is 0!
        var yyyy = today.getFullYear();

        today = yyyy + '-' + mm + '-' + dd;

        // Set the maximum date for the input field
        document.getElementById('doj').setAttribute('max', today);
        document.getElementById('registrationForm').addEventListener('submit', function (e) {
            e.preventDefault(); // Prevent form from actually submitting
            document.getElementById('successMessage').style.display = 'block'; // Show success message
        });
    </script>
   
</body>
</html>