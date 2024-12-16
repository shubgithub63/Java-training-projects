<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="about.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <div class="header-container">
            <h1>About Us</h1>
            <nav>
                <a href="home.jsp">Home</a>
                <a href="services.jsp">Services</a>
                <a href="aboutUs.jsp" class="active">About Us</a>
                <a href="contact.jsp">Contact</a>
                <a href="welcome.jsp">Back</a>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-content">
            <h2>Welcome to Our Journey</h2>
            <p>Empowering innovation, embracing creativity, and shaping the future together.</p>
            <a href="#about" class="btn-primary">Learn More</a>
        </div>
    </section>

    <main>
        <!-- About Section -->
        <section id="about" class="about-section">
            <h2>Who We Are</h2>
            <p>
                We are a team of passionate individuals dedicated to delivering quality services 
                and building meaningful relationships with our clients. Our mission is to bring 
                innovative solutions to your doorstep.
            </p>
        </section>

        <!-- Info Section with Images -->
       <section class="info-section">
    <div class="info-box">
   
        <img src=" https://www.mahsing.com.my/web/storage/2022/09/gallery-8-6.jpg" alt="Mission">
        <h3>Our Mission</h3>
        <p>To innovate, inspire, and transform businesses worldwide with creative solutions.</p>
    </div>
    <div class="info-box">
        <img src="https://thumbs.dreamstime.com/b/vision-growth-concept-businessman-looks-telescope-arrow-business-cartoon-illustration-banner-125376100.jpg" alt="Vision">
        <h3>Our Vision</h3>
        <p>Building a sustainable future where technology empowers every aspect of life.</p>
    </div>
    <div class="info-box">
        <img src="https://th.bing.com/th/id/OIP.MwOcsrgXi0WO2Uzq1l8C3wHaFP?w=1024&h=724&rs=1&pid=ImgDetMain" alt="Team">
        <h3>Our Team</h3>
        <p>A diverse group of professionals who thrive on collaboration and excellence.</p>
    </div>
    <div class="info-box">
        <img src="https://media.licdn.com/dms/image/C4E12AQHLkIqFC-Eysg/article-cover_image-shrink_720_1280/0/1603900887314?e=2147483647&v=beta&t=VXH4DPVmfJIGkv0ddOw5ELm3Re_THS-8fox7DDca9Cc" alt="Values">
        <h3>Our Values</h3>
        <p>Integrity, innovation, and commitment are at the heart of everything we do.</p>
    </div>
    <div class="info-box">
        <img src="https://th.bing.com/th/id/OIP.sYSjtG_nLgONgrJ1r-fnzgHaE8?pid=ImgDet&w=191&h=127&c=7" alt="Technology">
        <h3>Advanced Technology</h3>
        <p>Leveraging cutting-edge technology to deliver top-notch solutions.</p>
    </div>
    <div class="info-box">
        <img src="https://th.bing.com/th/id/OIP.ffSFnP7C8u-iOaFmQJb9cwHaEK?rs=1&pid=ImgDetMain" alt="Support">
        <h3>24/7 Support</h3>
        <p>Providing round-the-clock assistance to meet all your needs.</p>
    </div>
</section>


        <!-- Testimonials Section -->
        <section class="testimonials-section">
            <h2>What Our Clients Say</h2>
            <div class="testimonials-carousel">
                <div class="testimonial">
                    <p>"The team exceeded our expectations and delivered outstanding results."</p>
                    <h4>- John Doe, CEO</h4>
                </div>
                <div class="testimonial">
                    <p>"Amazing service and incredible support throughout the project."</p>
                    <h4>- Jane Smith, CTO</h4>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-container">
            <p>© 2024 Our Company. All rights reserved.</p>
            <div class="footer-links">
                <a href="#">Privacy Policy</a>
                <a href="#">Terms of Service</a>
                <a href="#">Support</a>
            </div>
            <div class="social-icons">
                <a href="https://www.facebook.com/pages/Interra%20Information%20Technology/1382723148625420/"><img src="https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19757.png" alt="Facebook"></a>
                <a href="https://x.com/interraitinc/status/1618345966125592576"><img src="https://th.bing.com/th/id/OIP.eroZY3IGTHF8TQ8xEeZpNAAAAA?rs=1&pid=ImgDetMain" alt="Twitter"></a>
                <a href="https://in.linkedin.com/company/interra-information-technologies-interrait"><img src="https://pngimg.com/uploads/linkedIn/linkedIn_PNG8.png" alt="LinkedIn"></a>
            </div>
        </div>
    </footer>
</body>
</html>
