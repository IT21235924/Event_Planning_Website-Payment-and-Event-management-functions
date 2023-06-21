<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@include file = "normalHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/success.css" type="text/css" rel="stylesheet">
</head>
<body>


<center><h2>My Complaints</h2></center>
<form action="deletecom" method="post">

	
	
	<table class="center">
      <tr>
		<td> Enter Your Complaint ID </td>
		<td> <input type ="text" name = "id" placeholder="Enter Complaint ID"required></td>
	</tr>
</table>
<br>
<button class="button" type="submit" name="delete" value="delete My Data">Delete Complaint</button>
</form>
</body>
</html>