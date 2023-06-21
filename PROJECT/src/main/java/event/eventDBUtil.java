package event;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class eventDBUtil {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Insert new category
		public static boolean insertEvent(String title, String shortDes, String description, String imageFileName, String uploadPath){
		
	    	boolean isSuccess = false;
	    	
	    	try{
	    		conn = configDB.getConnection();
	    		stmt = conn.createStatement();
	    	    String sql = "insert into event values (0,'"+title+"','"+shortDes+"','"+description+"','"+imageFileName+"','"+uploadPath+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0){
	    			isSuccess = true;
	    		}
	    		else{
	    			isSuccess = false;
	    		}


	    	   }
	    	   catch(Exception e)
	    	   {
	    		e.printStackTrace();
	    	   }
	 	
	    	   return isSuccess;

	    	
		}
		
		public static boolean updateEvent(int eventId,String title,String shortDes,String description,String imageFileName,String uploadPath) 
		{
			boolean isSuccess = false;
			
			try{
	    		conn = configDB.getConnection();
	    		stmt = conn.createStatement();
	    	    String sql = "update event set title='"+title+"', shortDes='"+shortDes+"', description='"+description+"', imageFileName='"+imageFileName+"',uploadPath='"+uploadPath+"' where eventId='"+eventId+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0){
	    			isSuccess = true;
	    		}
	    		else{
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e){
	    		e.printStackTrace();
	}
			
			return isSuccess;
			
		}
		
		public static boolean deleteEvent(int eventId) 
		{
			boolean isSuccess = false;
			
			try {
				conn = configDB.getConnection();
	    		stmt = conn.createStatement();
	    		String sql = "delete FROM event where eventId = "+eventId+"";
				stmt = conn.createStatement();
				int rs =  stmt.executeUpdate(sql);
				System.out.println(sql);
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

		