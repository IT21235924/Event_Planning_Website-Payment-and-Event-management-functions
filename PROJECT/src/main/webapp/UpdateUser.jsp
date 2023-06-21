<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobileNumber = request.getParameter("mobileNumber");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
	%>
<center><h2>Change Details</h2></center>


<form action="updateuser" method="post">
	<table class="center">
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"readonly></td>
	</tr>
		
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>"></td>
		</tr>
			<tr>
		<td>Phone number</td>
		<td><input type="text" name="mobileNumber" value="<%= mobileNumber %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="address" value="<%= address %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input class="button" type="submit" name="submit" value="Update My Data">
	</form>
	<br><br><br>

<%@include file = "normalFooter.jsp" %>
</body>
</html>
