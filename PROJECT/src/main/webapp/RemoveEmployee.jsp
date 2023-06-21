<%@include file = "adminHeader.jsp" %>
<%@include file = "footer.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/addNewProduct-style.css">
<meta charset="ISO-8859-1">
<title>remove employee</title>
</head>
<body>

<form action ="removeEmployee" method = "post">

<div class="left-div">
 <h3>Enter Name</h3>
 <center><input class = "T" type="text" name="name" required></center>
 </div>
 
<hr>


<div class="right-div">
<h3>Enter Email</h3>
<center><input class = "T" type="email" name="email" required></center>
 </div>
<hr>


<div class="right-div">
<h3>Enter Department</h3>
<center><input class = "T" type="text" name="department" required></center>

</div>
<hr>
	
 <br>
 <br>


<button class = "button">Remove</button>
   


 </form>

</body>
</html>