package project;

import java.sql.*;
import java.sql.DriverManager;

public class DBConnection {
	
	private static String url = "jdbc:mysql://localhost:3306/oop";
	private static String userName = "root";
	private static String password = "1234";
	private static Connection con;
	
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url,userName,password);
			
		}catch(Exception e)
		{
			System.out.println("connection is not success");
		
		}
		return con;
	}

}
