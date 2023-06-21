<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@include file = "normalHeader.jsp" %>
     
     <%
     
     if(Semail == null)
     {
    	 RequestDispatcher dp = request.getRequestDispatcher("login.jsp");
		  dp.forward(request,response);
     }
     
     %>
     
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
    
<!-- header section starts  -->






<center><p class="h2" >MY ACCOUNT</p></center>


<div class = "button">
    <a class = "bt3" type="button"  onclick="document.location='#'">MY CART</a>

 </div>
	<c:forEach var="c" items="${cus}">
	
	
	
	
        <c:set var="name" value="${c.name}"/>
        <c:set var="email" value="${c.email}"/>
        <c:set var="mobileNumber" value="${c.mobileNumber}"/>
        <c:set var="address" value="${c.address}"/>
        <c:set var="password" value="${c.password}"/>
        
        <div class="center">
        
        
        <P> Name :&nbsp; &nbsp; ${c.name}</P>  
             
        
        <br>
        <P> Email :&nbsp;&nbsp;&nbsp; ${c.email}</P>
    
        <br>
        <P> Contact Number :&nbsp;&nbsp;  ${c.mobileNumber}</P>
        
        <br>
        <P> Address :&nbsp; &nbsp;&nbsp; &nbsp;  ${c.address}</P>
        
        
        <br>
        <P> password : &nbsp;&nbsp;  ${c.password}</P>
    
        </c:forEach>
    </div>
	
	<br><br>
	
	<c:url value = "UpdateUser.jsp" var="cusupdate">
	
	<c:param name="name" value ="${name}"></c:param>
	<c:param name="email" value ="${email}"></c:param>
	<c:param name="mobileNumber" value ="${mobileNumber}"></c:param>
	<c:param name="address" value ="${address}"></c:param>
	<c:param name="password" value ="${password}"></c:param>
	
	</c:url>

    <div class = "button">
    <a  class = "bt1"  type="button"  onclick="document.location='${cusupdate}'">Change Details</a>
    <a class = "bt2" type="button"  onclick="document.location='DeleteUser.jsp'">Delete Account</a>
    <a  class = "bt1"  type="button"  onclick="document.location='complaints.jsp'">Add Complaint</a>
</div>

	<c:url value = "DeleteUser.jsp" var="cusdelete">
	
	<c:param name="name" value ="${name}"></c:param>
	<c:param name="email" value ="${email}"></c:param>
	<c:param name="mobileNumber" value ="${mobileNumber}"></c:param>
	<c:param name="address" value ="${address}"></c:param>
	<c:param name="password" value ="${password}"></c:param>
	
	</c:url>
	
   

<br><br>

<!-- footer section starts  -->
<%@include file = "normalFooter.jsp" %>


</body>
</html>