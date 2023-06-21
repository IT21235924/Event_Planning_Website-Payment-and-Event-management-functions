package project;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addEmployeeConrol")
public class addEmployeeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eid = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String department = request.getParameter("department");
		
	boolean istrue;
		
		istrue =UserDBUtill.addEmployee(eid,name, email, address, phone , department);
		
		if(istrue == true)
		{
			RequestDispatcher dp = request.getRequestDispatcher("UserAccount.jsp");
			dp.forward(request,response);
		}
		else
		{
			RequestDispatcher dp2 = request.getRequestDispatcher("unsuccess.jsp");
			dp2.forward(request,response);

		}
		
		
		
		
	}


}

