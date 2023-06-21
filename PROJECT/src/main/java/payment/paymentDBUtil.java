package payment;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import payment.configDB;

public class paymentDBUtil {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertPayment(String nameOnCard, String email, String cardNumber, String zipCode, String expMonth, String expYear) {
		
		boolean isSuccess = false;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			String sql = "insert into payment values (0,'"+nameOnCard+"','"+email+"','"+cardNumber+"','"+zipCode+"','"+expMonth+"','"+expYear+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}
