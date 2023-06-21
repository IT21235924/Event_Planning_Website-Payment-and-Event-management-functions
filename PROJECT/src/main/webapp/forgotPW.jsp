<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file = "normalHeader.jsp" %>
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
    


<!-- header section ends -->

<h1 class="heading">client's <span>review</span></h1>
<h1 class="heading"> Forgot<span>password</span> </h1>
<!--Complaints starts-->


<section class="contact" id="contact">
    
    

    <form action="updatepw" method="post">
        <div class="inputBox">
            <input name ="email" type="email" value =""  placeholder="email" required>
            <input name ="password" type="password"  value ="" placeholder="new password" required>
        </div>
        
        <input  name="submit" type="submit" id= "pw"value="Change Password" class="btn">
        
    </form>

</section>
<!--Complaints ends-->


<!-- footer section starts  -->

<%@include file = "normalFooter.jsp" %>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>



</body>
</html>