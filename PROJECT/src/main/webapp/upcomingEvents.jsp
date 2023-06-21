<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>upcomingEvents-EventGeeks</title>

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/upcomingEvents.css">

</head>
<body>
<%@include file = "normalHeader.jsp" %>

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
                
                String sql = "SELECT * FROM event";
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
    		               
        </div>
        
    </div>


<%@ include file = "./footer.jsp" %>

</body>
</html>