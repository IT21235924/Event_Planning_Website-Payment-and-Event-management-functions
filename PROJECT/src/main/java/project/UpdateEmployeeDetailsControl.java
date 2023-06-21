package project;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateEmployeeDetailsControl")
public class UpdateEmployeeDetailsControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String eid = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String department = request.getParameter("department");
		
		boolean isTrue;
		
         isTrue =UserDBUtill.updateEmployee(eid,name, email, address, phone , department);
		
		if(isTrue == true)
		{
			RequestDispatcher dp = request.getRequestDispatcher("success.jsp");
			dp.forward(request,response);
		}
		else
		{
			RequestDispatcher dp2 = request.getRequestDispatcher("unsuccess.jsp");
			dp2.forward(request,response);

		}
	}

}
