<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file = "./configDB.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Display Event List - EventGeek</title>
	<link rel="stylesheet" href="./css/sidebar.css">
	<link rel="stylesheet" href="./css/displayTableList.css">
	
</head>
<body>
	<%@include file="./sidebar.jsp" %>
    
    <div class="content">
        <div class="title">
            <h2>Event List</h2>
        </div>
        <div class="add-btn">
            <button><a href="addNewEvent.jsp">Add a new Event</a></button>
        </div>
        <div class="table-data">
            <table border="1">
	            
	                <tr>
	                    <th>Title</th>
	                    <th>Short Description</th>
	                    <th>Image</th>
	                    <th>Operations</th>
	                </tr>
					<%
					
						
						String sql = "select * from event";
						stmt = conn.createStatement();
						
						rs =  stmt.executeQuery(sql);
						
						while(rs.next())
                        {
                            String id = rs.getString("eventId");	
					%>
		                <tr>
		                    <td><%=rs.getString("title") %></td>
		                    <td><%=rs.getString("shortDes") %></td>
		                    <td><img src="../images/Event/<%=rs.getString("imageFileName") %>" width="140px" height="90px"></td>
		                    <td>
		                        <button class='upd-btn'><a href='updateEvent.jsp?id=<%= id%>'>Update</a></button>
		                        <form action="../deletEventServlet" method="get"><button class='del-btn' name="delete" value='<%= id%>'><a>Delete</a></button></form>
		                    </td>
		                </tr>
	                <%
                        }
                    %>
            </table>
        </div>
    </div>
</body>
</html>