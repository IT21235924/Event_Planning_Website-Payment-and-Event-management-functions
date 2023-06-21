<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>EventGeeks - Home page</title>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%@include file = "normalHeader.jsp" %>


	<!-- home section starts  -->
	
	<section class="home" id="home">
	
	    <div class="content">
	        <h3>its time to celebrate! the best <span> event organizers </span></h3>
	        <a href="#" class="btn">contact us</a>
	    </div>
	
	    <div class="swiper-container home-slider">
	        <div class="swiper-wrapper">
	            <div class="swiper-slide"><img src="images/slide-1.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="images/slide-2.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="images/slide-3.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="images/slide-4.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="images/slide-5.jpg" alt=""></div>
	            <div class="swiper-slide"><img src="images/slide-6.jpg" alt=""></div>
	        </div>
	    </div>
	
	</section>
	
	<!-- home section ends -->
	
	<div class="blog-section">
        <div class="blog-section-header">
            <h1 class="heading">upcoming <span>events</span></h1>
            
        </div>
        <div class="row">
                <%
                Connection conn;
        		Statement stmt;
        		ResultSet rs;
        		
        		Class.forName("com.mysql.jdbc.Driver");
        		conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/eventplanning","root","HakunaMatata69");
                
                String sql = "SELECT * FROM event LIMIT 4 ";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                
                while(rs.next())
                {              	
                
			   	
				%>
	            <div class="column interest">
	              <img src="./images/Event/<%= rs.getString("imageFileName") %>" alt="Snow" style="width:100%">
	              <div class="bottom-center"><h2><%= rs.getString("title") %></h2></div>
	            </div>
	            <%
    			}
    		    %>
    		    <a href="./upcomingEvents.jsp" class="btn">view more</a>	            
        </div>
        
    </div>

    	
	
	
	<!-- about section starts  -->
	
	<section class="about" id="about">
	
	<h1 class="heading"><span>about</span> us </h1>
	
	<div class="row">
	
	    <div class="image">
	        <img src="images/about-img.jpg" alt="">
	    </div>
	
	    <div class="content">
	        <h3>we will give a very special celebration for you</h3>
	        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam labore fugiat ut esse perferendis perspiciatis provident dolores fuga in facilis culpa possimus, quia praesentium itaque, sapiente quasi harum rem asperiores.</p>
	        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Fugiat vero expedita incidunt provident quibusdam aut odit, numquam nesciunt similique nisi.</p>
	        <a href="#" class="btn">contact us</a>
	    </div>
	
	</div>
	
	</section>
	
	<!-- about section ends -->
	
	<!-- gallery section starts  -->
	
	<section class="gallery" id="gallery">
	
	    <h1 class="heading">our <span>gallery</span></h1>
	
	    <div class="box-container">
	
	        <div class="box">
	            <img src="images/g-1.jpg" alt="">
	            <h3 class="title">photos and events</h3>
	            <div class="icons">
	                <a href="#" class="fas fa-heart"></a>
	                <a href="#" class="fas fa-share"></a>
	                <a href="#" class="fas fa-eye"></a>
	            </div>
	        </div>
	
	        <div class="box">
	            <img src="images/g-2.jpg" alt="">
	            <h3 class="title">photos and events</h3>
	            <div class="icons">
	                <a href="#" class="fas fa-heart"></a>
	                <a href="#" class="fas fa-share"></a>
	                <a href="#" class="fas fa-eye"></a>
	            </div>
	        </div>
	
	        <div class="box">
	            <img src="images/g-3.jpg" alt="">
	            <h3 class="title">photos and events</h3>
	            <div class="icons">
	                <a href="#" class="fas fa-heart"></a>
	                <a href="#" class="fas fa-share"></a>
	                <a href="#" class="fas fa-eye"></a>
	            </div>
	        </div>
	
	        <div class="box">
	            <img src="images/g-4.jpg" alt="">
	            <h3 class="title">photos and events</h3>
	            <div class="icons">
	                <a href="#" class="fas fa-heart"></a>
	                <a href="#" class="fas fa-share"></a>
	                <a href="#" class="fas fa-eye"></a>
	            </div>
	        </div>
	
	        <div class="box">
	            <img src="images/g-5.jpg" alt="">
	            <h3 class="title">photos and events</h3>
	            <div class="icons">
	                <a href="#" class="fas fa-heart"></a>
	                <a href="#" class="fas fa-share"></a>
	                <a href="#" class="fas fa-eye"></a>
	            </div>
	        </div>
	
	        <div class="box">
	            <img src="images/g-6.jpg" alt="">
	            <h3 class="title">photos and events</h3>
	            <div class="icons">
	                <a href="#" class="fas fa-heart"></a>
	                <a href="#" class="fas fa-share"></a>
	                <a href="#" class="fas fa-eye"></a>
	            </div>
	        </div>
	
	        <div class="box">
	            <img src="images/g-7.jpg" alt="">
	            <h3 class="title">photos and events</h3>
	            <div class="icons">
	                <a href="#" class="fas fa-heart"></a>
	                <a href="#" class="fas fa-share"></a>
	                <a href="#" class="fas fa-eye"></a>
	            </div>
	        </div>
	
	        <div class="box">
	            <img src="images/g-8.jpg" alt="">
	            <h3 class="title">photos and events</h3>
	            <div class="icons">
	                <a href="#" class="fas fa-heart"></a>
	                <a href="#" class="fas fa-share"></a>
	                <a href="#" class="fas fa-eye"></a>
	            </div>
	        </div>      
	
	    </div>
	
	</section>
	
	<!-- gallery section ends -->
	
	<%@ include file = "./footer.jsp" %>
	
	<!-- theme toggler  -->
	
	<div class="theme-toggler">
	
	    <div class="toggle-btn">
	        <i class="fas fa-cog"></i>
	    </div>
	
	    <h3>choose color</h3>
	
	    <div class="buttons">
	        <div class="theme-btn" style="background: #3867d6;"></div>
	        <div class="theme-btn" style="background: #f7b731;"></div>
	        <div class="theme-btn" style="background: #ff0033;"></div>
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