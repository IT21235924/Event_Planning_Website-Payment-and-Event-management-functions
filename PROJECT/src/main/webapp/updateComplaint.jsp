<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@include file = "normalHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/updateuser.css" type="text/css" rel="stylesheet">
</head>
<body>

<%
        String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String complaint = request.getParameter("complaint");
		
%>
<center><h2>My Complaints</h2></center>
<form action="updatecomplaint" method="post">
	<table class = "center">
	
	<tr>
		<td>Complaint ID</td>
		<td><input type="text" name="id" value="<%= id %>"></td>
	</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"readonly></td>
	</tr>
		
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
			<tr>
		<td>Complaint</td>
		<td><input type="text" name="complaint" value="<%= complaint %>"></td>
	</tr>
	
	</table>
	<br>
	<input class="button" type="submit" name="submit" value="Update My Data">
	</form>
	<br>
	<br>
<%@include file = "normalFooter.jsp" %>
</body>
</html>