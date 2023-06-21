package event;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deletEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("delete");
		
		int eventId = Integer.parseInt(id);
		
		boolean isTrue = eventDBUtil.deleteEvent(eventId);
		
		if(isTrue = true) 
		{
			response.sendRedirect("EventPlanner/eventList.jsp");
		}
		
	}

}
