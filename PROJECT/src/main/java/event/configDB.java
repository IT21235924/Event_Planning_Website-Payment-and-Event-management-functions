package event;

import java.sql.Connection;

import java.sql.DriverManager;

public class configDB {
	
	//create DB Connection
		private static String dbUrl = "jdbc:mysql://localhost:3307/eventplanning";
		private static String dbUser = "root";
		private static String dbPass = "HakunaMatata69";
		private static Connection conn;

		public static Connection getConnection() {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
			}
			catch (Exception e) {
				System.out.println("Database connection Failed!!!");
			}
			
			return conn;
			}

}
