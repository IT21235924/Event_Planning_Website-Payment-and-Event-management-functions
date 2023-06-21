package project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/removeEmployeeControl")
public class removeEmployeeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
        String email = request.getParameter("email");
		
		boolean istrue;
		
		istrue =UserDBUtill.deleteEmployee(email);
		
            if(istrue == true) {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Successfully Removed');");
			out.println("location = 'addNewEmployee.jsp'");
			out.println("</script>");
		}
		else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Unsuccessfull');");
			out.println("location = 'RemoveEmployee.jsp'");
			out.println("</script>");
		}
	
	}

}
