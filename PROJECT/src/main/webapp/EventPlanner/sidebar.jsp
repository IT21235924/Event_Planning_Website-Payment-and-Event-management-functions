<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title></title>
	<link rel="stylesheet" href="./css/sidebar.css">
</head>
<body>
	<!-- Sidebar -->
    <div class="sidebar">
        <div class="logo">
            <!-- <img src="./images/logo.png"> -->
            <span>EventGeek</span>
        </div>
        <div class = "s-1">

        <a href="./dashboard.jsp">Home</a>
        
        <a href="./eventList.jsp">View all events</a>
        
        </div>
        <!--<a href="" class="lower-left">Logout</a>-->
        <form action='' method="get">
	    	<a href="" class="lower-left">Logout</a>
	    </form>
    </div>
    <!-- End of the sidebar -->

    <div class="profile">
        <img src="./images/avatar.png" alt="">
    </div>
</body>
</html>