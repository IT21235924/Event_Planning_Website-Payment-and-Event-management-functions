package project;

public class User {
	
	private String name;
	private String email;
	private String mobileNumber;
	private String password;
	private String address;
	
	
	public User(String name, String email,String address, String mobileNumber, String password) {
		super();
		this.name = name;
		this.email = email;
		this.address = address;
		this.mobileNumber = mobileNumber;
		this.password = password;
		
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}
	public String getAddress() {
		return address;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public String getPassword() {
		return password;
	}

	
	

	
}
