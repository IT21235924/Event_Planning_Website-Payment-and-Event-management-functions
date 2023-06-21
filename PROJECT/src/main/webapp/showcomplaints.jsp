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
    <h1 class = "success"><center>Complaint recorded Successfully!</h1></center>

<table class="center">
	<c:forEach var="c" items="${complaints}">
	
	
	
	<c:set var="id" value="${c.id}"/>
	<c:set var="name" value="${c.name}"/>
	<c:set var="email" value="${c.email}"/>
	<c:set var="complaint" value="${c.complaint}"/>
	
	
	
	<tr>
		<td>Complaint ID </td>
		<td> ${c.id}</td>
	</tr>
	<tr>
		<td>Your Name  </td>
		<td> ${c.name}</td>
	</tr>
	<tr>
		<td>Your Email  </td>
		<td> ${c.email}</td>
	</tr>
	<tr>
		<td> Complaint </td>
		<td> ${c.complaint}</td>
	</tr>
	
	<hr>

	</c:forEach>
	</table>
	
	<c:url value = "updateComplaint.jsp" var="compupdate">
	
	<c:param name="id" value ="${id}"></c:param>
	<c:param name="name" value ="${name}"></c:param>
	<c:param name="email" value ="${email}"></c:param>
	<c:param name="complaint" value ="${complaint}"></c:param>
	
	
	</c:url>
		
	
	
	
	<button type="button" onclick="document.location='${compupdate}'">Edit Complaint</button>
    <button type="button" value="delete" onclick="document.location='DeleteComplaint.jsp'">Delete Complaint</button>
	
<br>
<br>
<br>
<%@include file = "normalFooter.jsp" %>

</body>
</html>
      