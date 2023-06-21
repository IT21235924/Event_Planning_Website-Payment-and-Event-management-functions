package event;


import java.io.FileOutputStream;


import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@MultipartConfig
public class updateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String title = request.getParameter("title");
		String shortDes = request.getParameter("shortDescription");
		String description = request.getParameter("description");
		Part file = request.getPart("image");
		String imageFileName = file.getSubmittedFileName();
		String uploadPath = "C:/Users/WWW/Desktop/OOP project/eventPlanning/src/main/webapp/images/Event/"+imageFileName;	
		String id = request.getParameter("number");
		
		int eventId = Integer.parseInt(id);
		
		try {
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
						
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
					}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		boolean isTrue = eventDBUtil.updateEvent(eventId,title, shortDes, description,imageFileName, uploadPath);
		
		if(isTrue == true) 
		{
			response.sendRedirect("EventPlanner/eventList.jsp");
		}
		
	}

}
