<%

     
	String Semail = (String)session.getAttribute("emailu");


		if(Semail != null)
		{
				out.println("<script type = 'text/javascript'>");
				out.println("alert('You Have Already logged in');");
				out.println("location = 'uac'");
				out.println("</script>");
				 
		}

%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <a href="" class="logo"><span>e</span>vent<span>G</span>eeks</a>

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


<!--login starts-->


<section class="contact login" id="contact">
    
    
    <h1 class="heading">Log<span>in</span> </h1>
    <form action="login" method="post">
        <div class="inputBox">
            
            <input name="email" type="email" class="login" placeholder="email"required>
        
            <input name="pw" type="password" class="login" placeholder="password"required>
            
        </div>
        <center><input type="submit" name="login" value="login" class="btn"></center>
        <br>
       <h2> <a href="forgotPW.jsp">Forgot password</a></h2>
    </form>

</section>
<br>
<br>
<br>
<%@include file = "normalFooter.jsp" %>
<!--login ends-->


<!-- footer section starts  -->


</body>
</html>