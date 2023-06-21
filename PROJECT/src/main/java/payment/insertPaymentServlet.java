package payment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class insertPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nameOnCard = request.getParameter("name");
		String email = request.getParameter("email");
		String cardNumber = request.getParameter("cardNum");
		String zipCode = request.getParameter("zip");
		String expMonth = request.getParameter("exMonth");
		String expYear = request.getParameter("exYear");
		
		PrintWriter out = response.getWriter();
		
		System.out.println(nameOnCard);
		System.out.println(email);
		System.out.println(cardNumber);
		System.out.println(zipCode);
		System.out.println(expMonth);
		System.out.println(expYear);
		
		
		boolean isTrue = paymentDBUtil.insertPayment(nameOnCard, email, cardNumber, zipCode, expMonth, expYear);
		
		if(isTrue == true) {
			response.sendRedirect("payment.jsp");
		}
		else {
			response.sendRedirect("payment.jsp");
		}
		
	}
		
	}


