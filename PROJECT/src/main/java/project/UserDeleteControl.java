package project;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserDeleteControl")
public class UserDeleteControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		

		String emailu = request.getParameter("email");
		String password = request.getParameter("pass");
		
		
		 boolean istrue;
			
			istrue =UserDBUtill.validate(emailu, password);
			
			if(istrue == true)
			{
				boolean isdelete;
				isdelete = UserDBUtill.deleteUser(emailu);
				
				if(isdelete == true)
				{
					RequestDispatcher dp = request.getRequestDispatcher("UserSignUp.jsp");
					dp.forward(request,response);
					HttpSession session = request.getSession(true);
					session.invalidate();
				}
				else
				{
					RequestDispatcher dp = request.getRequestDispatcher("unsuccess.jsp");
					dp.forward(request,response);
				}
				
			}
			else 
			{
				out.println("<script type = 'text/javascript'>");
				out.println("alert('Your Email or Password is Incorrect');");
				out.println("location = 'uac'");
				out.println("</script>");
				

			}
	}

}
