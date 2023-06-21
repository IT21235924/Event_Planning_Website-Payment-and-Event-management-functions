<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add new Event - EventGeek</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayForm.css">
	
</head>
<body>
	<%@include file="./sidebar.jsp" %>
    
    <div class="content">
        <div class="title">
            <h2>Add a new event</h2>
        </div>
        <form action="../insertEventServlet" class="form-group" method="POST" enctype="multipart/form-data">
            <div class="input-group">
                <label>Enter the event name</label>
                <input type="text" name="title" required autocomplete="off">
            </div>
            <div class="input-group">
                <label>Enter short description</label>
                <input type="text" name="shortDescription" required autocomplete="off">
            </div>
            
           
            
            <div class="input-group">
                <label>Description about event</label>
                <textarea name="description" id="" cols="116" rows="10" required></textarea>
            </div>
            <div class="input-group">
                <label>Enter Image</label>
                <input type="file" name="image">
            </div>
            <input type="submit" name="submit" value="Publish Event" class="btn">
        </form>
    </div>
</body>
</html>