package project;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/complaintscontrol")
public class complaintscontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String complaint = request.getParameter("complaint");
		String respons = request.getParameter("respons");
		
		
		boolean isTrue;
		isTrue = UserDBUtill.complaint(name, email, complaint,respons);
		
		if(isTrue == true) {
			
			List<Complaint> complaints = UserDBUtill.getcomplaint(email);
			request.setAttribute("complaints", complaints);
			
			RequestDispatcher dis = request.getRequestDispatcher("showcomplaints.jsp");
			dis.forward(request, response);
		}
		else {
			List<Complaint> complaints= UserDBUtill.getcomplaint(email);
			request.setAttribute("complaints", complaints);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}


}
