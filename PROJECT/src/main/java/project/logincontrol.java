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


@WebServlet("/logincontrol")
public class logincontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String emailu = request.getParameter("email");
		String password = request.getParameter("pw");
		
		if("admin@gmail.com".equals(emailu) && "admin".equals(password))
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("emailu",emailu);
			RequestDispatcher dp = request.getRequestDispatcher("addNewEmployee.jsp");
			dp.forward(request,response);
		}
		if("eventplanner@gmail.com".equals(emailu) && "mamamuditha".equals(password))
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("emailu",emailu);
			RequestDispatcher dp = request.getRequestDispatcher("eventList.jsp");
			dp.forward(request,response);
		}
		else
		{
			 boolean istrue;
				
				istrue =UserDBUtill.validate(emailu, password);
				
				if(istrue == true)
				{
					HttpSession session = request.getSession(true);
					session.setAttribute("emailu",emailu);
					List<User> cus = UserDBUtill.getUser(emailu);
					request.setAttribute("cus", cus);
					
					RequestDispatcher dp = request.getRequestDispatcher("UserAccount.jsp");
					dp.forward(request,response);
				}
				else 
				{
					out.println("<script type = 'text/javascript'>");
					out.println("alert('Your Email or Password is Incorrect');");
					out.println("location = 'login.jsp'");
					out.println("</script>");
					

				}
		}
       
		
	}

}