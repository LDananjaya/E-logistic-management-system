package itp.com.model;

public class Customer {

	public static boolean loggedIn = false;
	private String Cid;
	private String CustomerName;
	private String NIC;
	private String Email;
	private String Contact;
	private String Shop_Address;
	private String Shop_Name;
	private String C_address;
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCustomerId() {
		return Cid;
	}

	public void setCustomerId(String customerId) {
		Cid = customerId;
	}

	public String getCustomerName() {
		return CustomerName;
	}

	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}

	public String getNIC() {
		return NIC;
	}

	public void setNIC(String nIC) {
		NIC = nIC;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		this.Email = email;
	}

	public String getContact() {
		return Contact;
	}

	public void setContact(String contact) {
		this.Contact = contact;
	}

	public String getShop_Address() {
		return Shop_Address;
	}

	public void setShop_Address(String shop_Address) {
		this.Shop_Address = shop_Address;
	}

	public String getShop_Name() {
		return Shop_Name;
	}

	public void setShop_Name(String shop_Name) {
		this.Shop_Name = shop_Name;
	}

	public String getC_address() {
		return C_address;
	}

	public void setC_address(String c_address) {
		C_address = c_address;
	}
	
	public String toString() {
		return "Customer Id = " + Cid + "\n" + "Customer Name :"+ CustomerName + "\n" +"\n"+"Customer Address"+C_address+ "NIC  :"+ NIC + "\n" +"email"+Email+ "\n" +"contact  :"+Contact+ "\n" +"shop Address :"+Shop_Address+ "\n" +"shop Name"+Shop_Name+"\n"+"Passsword :"+password;
	}

	
	
}
