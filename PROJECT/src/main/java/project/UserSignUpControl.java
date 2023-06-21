 package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserSignUpControl")
public class UserSignUpControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String mobileNumber = request.getParameter("mobileNumber");
		String password = request.getParameter("password");
		
		boolean istrue;
		boolean validate;
		
		validate =UserDBUtill.validateSignup(email);
	
	     if(validate == true)
		{
	    	    out.println("<script type = 'text/javascript'>");
				out.println("alert('This Email is already used');");
				out.println("location = 'UserSignUp.jsp'");
				out.println("</script>");
				
		}
	     else
	     {
		
				
				istrue =UserDBUtill.insertuser(name, email, address, mobileNumber, password);
				
				if(istrue == true)
				{
				
					 out.println("<script type = 'text/javascript'>");
						out.println("alert('Account created Successfully! Please Login');");
						out.println("location = 'login.jsp'");
						out.println("</script>");
					
				}
				else
				{
					RequestDispatcher dp2 = request.getRequestDispatcher("unsuccess.jsp");
					dp2.forward(request,response);
		
				}
	     }
		
	}

}
