
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Responsive Event Organizer Website Design Tutorial</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    

<header class="header">

    <a href="#" class="logo"><span>e</span>vent<span>G</span>eeks</a>

    <nav class="navbar">
       <a href="#home">home</a>
        <a href="#service">service</a>
        <a href="#about">about</a>
        <a href="#gallery">gallery</a>
        <a href="#price">price</a>
        <a href="#review">review</a>
        <a href="#contact">contact</a>
        <a href="UserSignUp.jsp">SignUp</a>
        <a href="login.jsp">logIn</a>
        <a href="uac">Account</a>
        <a href="logout">logOut</a>
    </nav>

    <div id="menu-bars" class="fas fa-bars"></div>
    
</header>

<!-- header section ends -->

<h1 class="heading">client's <span>review</span></h1>
<h1 class="heading"> C<span>omplaints</span> </h1>
<!--Complaints starts-->


<section class="contact" id="contact">
    
    

    <form action="complaint" method="post">
        <div class="inputBox">
            <input name= "name" type="text" placeholder="name">
            <input name ="email" type="email" placeholder="email">
        </div>
        
        <textarea name="complaint" placeholder="your message" id="" cols="30" rows="10"></textarea>
        <input  name="submit" type="submit" value="File Complaint" class="btn">
        
    </form>

</section>
<!--Complaints ends-->


<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">
        
        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +94767921858 </a>
            <a href="#"> <i class="fas fa-phone"></i> +94775193445 </a>
            <a href="#"> <i class="fas fa-envelope"></i> mudithapradeeptha@gmail.com </a>
            <a href="#"> <i class="fas fa-envelope"></i> bhagyadewmi17@gmail.com </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> colombo, sri lanka - 400104 </a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
        </div>

    </div>

    <div class="credit"> created by <span>MMBP Designers</span> | all rights reserved </div>

</section>

<!-- footer section ends -->

<!-- theme toggler  -->

<div class="theme-toggler">

    <div class="toggle-btn">
        <i class="fas fa-cog"></i>
    </div>

    <h3>choose color</h3>

    <div class="buttons">
        <div class="theme-btn" style="background: #3867d6;"></div>
        <div class="theme-btn" style="background: #f7b731;"></div>
        <div class="theme-btn" style="background: #5c2274;"></div>
        <div class="theme-btn" style="background: #20bf6b;"></div>
        <div class="theme-btn" style="background: #fa8231;"></div>
        <div class="theme-btn" style="background: #FC427B;"></div>
    </div>

</div>




<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>