<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	
</head>
<body>
	<%
		Connection conn, conn1;
		Statement stmt, stmt1;
		ResultSet rs, rs1;
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/eventplanning","root","HakunaMatata69");
	%>
</body>
</html>