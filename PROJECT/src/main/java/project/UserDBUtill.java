package project;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtill {
	
	boolean issuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
public static List<User> getUser(String emailu)
{
	ArrayList<User>cus = new ArrayList<>();
	
	try {
		
		con =  DBConnection.getCon();
		stmt= con.createStatement();
		String sql = "select * from customer where email='"+emailu+"'";
		 rs = stmt.executeQuery(sql); 
		
		while(rs.next()) {
			String name = rs.getString(1);
			String email = rs.getString(2);
			String address = rs.getString(3);
			String mobileNumber = rs.getString(4);
			String password = rs.getString(5);
			
			User c = new User(name, email, address , mobileNumber, password);
			cus.add(c);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return cus;
}




	
	public static boolean validate(String email,String password)
	{
		boolean issuccess = false;
		
		
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "select * from customer where email='"+email+"'and password ='"+password+"'";
			 rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
		

	}
	
	public static boolean updatePW(String email, String password)
	{
          boolean issuccess = false; 
		
		
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "update customer set password = '"+password+"'"
			+ "where email = '"+email+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
		
		
	}
	
	
	public static boolean validateSignup(String email)
	{
		boolean issuccess = false;
		
		
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "select * from customer where email='"+email+"'";
			 rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
		

	}
	
	
	public static boolean insertuser(String name,String email,String address,String mobileNumber,String password)
	{
		boolean issuccess = false;
		
		
		
	try {
		
		con =  DBConnection.getCon();
		stmt= con.createStatement();
		String sql = "insert into customer values ('"+name+"','"+email+"','"+address+"','"+mobileNumber+"','"+password+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0)
		{
			issuccess = true;
		}
		else {
			issuccess = false;
		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return issuccess;
	

	}
	
	
	
	public static boolean addEmployee(String eid,String name,String email,String address,String phone ,String department)

	{
		boolean issuccess = false;
		
		
		
	try {
		
		con =  DBConnection.getCon();
		stmt= con.createStatement();
		String sql = "insert into Employee values ('"+eid+"','"+name+"','"+email+"','"+address+"','"+phone+"','"+department+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0)
		{
			issuccess = true;
		}
		else {
			issuccess = false;
		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return issuccess;
	

	}


	
	
	public static boolean updateEmployee(String eid,String name,String email,String address,String phone ,String department)
	{
		boolean issuccess = false; 
		
		
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "update Employee set Name = '"+name+"',Email ='"+email+"', Address='"+address+"',Mobile ='"+phone+"',Department = '"+department+"'"
			+ "where eid = '"+eid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
		

	}
	
	public static boolean updateUser(String name,String email,String mobileNumber,String address, String password)
	{
          boolean issuccess = false; 
		
		
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "update customer set name = '"+name+"', address='"+address+"',mobileNumber ='"+mobileNumber+"',password = '"+password+"'"
			+ "where email = '"+email+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
		
		
	}
	
	public static List<User> getUserDetails(String emailu)
	{
         ArrayList<User>cus = new ArrayList<>();
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "select * from customer where email='"+emailu+"'";
			 rs = stmt.executeQuery(sql); 
			
			while(rs.next()) {
				String name = rs.getString(1);
				String email = rs.getString(2);
				String address = rs.getString(3);
				String mobileNumber = rs.getString(4);
				String password = rs.getString(5);
				
				User c = new User(name, email, address , mobileNumber, password);
				cus.add(c);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return cus;
	}

	public static boolean complaint(String name,String email,String complaint,String respons)
	{
		boolean issuccess = false;
		
		
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "insert into complaint values (0,'"+name+"','"+email+"','"+complaint+"',0)";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
	}
	
	public static List<Complaint> getcomplaint(String emailu)

	{
		
		
         ArrayList<Complaint>comp = new ArrayList<>();
         
         
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "select * from complaint where email='"+emailu+"'";
			 rs = stmt.executeQuery(sql); 
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String complaint = rs.getString(4);
				String respons = rs.getString(5);
				
				
				Complaint com = new Complaint(id,name, email,complaint , respons);
				comp.add(com);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return comp;
	}
	
	
	public static boolean updateComplaints(String id,String name,String email,String complaint,String respons)
	{
          boolean issuccess = false; 
		
		
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "update complaint set name = '"+name+"', complaint='"+complaint+"'"
			+ "where email = '"+email+"'and ComplaintID='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
		
		
	}
	
	
	public static boolean deleteUser(String email)
	{
         boolean issuccess = false; 
		
		
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "delete from customer where email = '"+email+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
	}
	
	public static boolean deleteComplaint(String Id)
	{
         boolean issuccess = false; 
         
         int convid = Integer.parseInt(Id);
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "delete from complaint where ComplaintID = '"+convid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
	}

	public static boolean deleteEmployee(String email)
	{
         boolean issuccess = false; 
         
		
		try {
			
			con =  DBConnection.getCon();
			stmt= con.createStatement();
			String sql = "delete from Employee where Email = '"+email+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				issuccess = true;
			}
			else {
				issuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
	}
}
