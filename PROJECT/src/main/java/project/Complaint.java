package project;

public class Complaint {
	
	private int id;
	private String name;
	private String email;
	private String complaint;
	
	
	public Complaint(int id,String name, String email, String complaint,String respons) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.complaint = complaint;
		
		
	}
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getComplaint() {
		return complaint;
	}
	
	
	

}
