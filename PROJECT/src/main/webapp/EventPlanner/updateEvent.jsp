<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file = "./configDB.jsp" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Event - EventGeek</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayForm.css">
	<link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
	<%@include file="./sidebar.jsp" %>
    
    <div class="content">
        <div class="title">
            <h2>Update Event</h2>
        </div>
        
        <%
	   		try{
	   							
				String id = request.getParameter("id");
				int eventId = Integer.parseInt(id);
				
				String sql = "select * from event where eventId="+eventId+"";
				stmt = conn.createStatement();
				rs =  stmt.executeQuery(sql);
				
				while(rs.next()){
   	
   		%>
        <form action="../updateEventServlet" class="form-group" method="POST" enctype="multipart/form-data">
			<input type="hidden" name="number" required autocomplete="off" placeholder=<%=rs.getString("eventId")%> value=<%=rs.getString("eventId")%> readonly>
            <div class="input-group">
                <label>Enter the event name</label>
                <input type="text" name="title" required autocomplete="off" placeholder=<%=rs.getString("title") %>>
            </div>
            <div class="input-group">
                <label>Enter short description</label>
                <input type="text" name="shortDescription" required autocomplete="off" placeholder=<%=rs.getString("shortDes") %>>
            </div>
            
            <div class="input-group">
                <label>Description about event</label>
                <textarea name="description" id="" cols="116" rows="10" required placeholder=<%=rs.getString("description") %>></textarea>
            </div>  
        <%
				}
	   		}
	   		catch(Exception e){
	   			e.printStackTrace();
	   		}
        %>	       	       	
       
            <div class="input-group">
                <label>Enter Image</label>
                <input type="file" name="image">
            </div>
        	<input type="submit" name="submit" value="Update the event" class="btn">
        </form> 
    </div>
</body>
</html>