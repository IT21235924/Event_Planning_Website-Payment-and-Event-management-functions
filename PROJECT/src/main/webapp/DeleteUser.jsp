<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@include file = "normalHeader.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/useraccount.css" type="text/css" rel="stylesheet">
 
</head>
<body>

<center><h2>Enter Your password to delete your account</h2></center>

<form action="delete" method="post">
<table class="center">
	
	<tr>
		<td>Email</td>
		<td><% out.println(Semail);%></td>
	</tr>
	
	
	<tr>
		<td>Password </td>
		<td> <input type ="password" name = "pass"  required></td>
	</tr>
	
	
	</table>
	<br>
	
	 <button type="submit" value="delete" >Delete Account</button>
	 
	 </form>
<br>
<br>
<br>
<%@include file = "normalFooter.jsp" %>
</body>
</html>