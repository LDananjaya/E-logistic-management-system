package itp.com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;

import itp.com.model.Customer;
import itp.com.util.DBConnection;

public class CustomerServiceImpl implements CustomerService{

	private static Connection connection;
	
	public CustomerServiceImpl() {
		connection = DBConnection.getConnection();
	}
	@Override
	public boolean addNewCustomer(Customer cus) throws SQLException {
		
		String sql ="Insert into client values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement stm = connection.prepareStatement(sql);
		
		stm.setObject(1,0);
		stm.setObject(2, cus.getNIC());
		stm.setObject(3, cus.getCustomerName());
		stm.setObject(4, cus.getEmail());
		stm.setObject(5, cus.getContact());
		stm.setObject(6, cus.getShop_Address());
		stm.setObject(7, cus.getShop_Name());
		stm.setObject(8, cus.getC_address());
		stm.setObject(9, cus.getPassword());
		
		int result = stm.executeUpdate();
		return  result>0;
	}
	@Override
	public ArrayList<Customer> getAllCustomer() throws SQLException{
		String sql ="Select * from client";
		Statement stm = connection.createStatement();
		ResultSet rst = stm.executeQuery(sql);
		ArrayList<Customer> customerList = new ArrayList<Customer>();


		while(rst.next()) {
			Customer cus = new Customer();
			
			cus.setCustomerId(rst.getString("Cid"));
			cus.setNIC(rst.getString("NIC"));
			cus.setCustomerName(rst.getString("Name"));
			cus.setEmail(rst.getString("Email"));
			cus.setContact(rst.getString("Contact"));
			cus.setShop_Address(rst.getString("Shop_address"));
			cus.setShop_Name(rst.getString("shop_Name"));
			cus.setC_address(rst.getString("c_address"));
			cus.setPassword(rst.getString("password"));
			
			customerList.add(cus);
		}
		return customerList;
	}
	@Override
	public Customer getCustomerDetails(String searchNo) throws SQLException {
		String sql ="Select * from client where Cid='"+searchNo+"'";
		Statement stm = connection.createStatement();
		ResultSet rst = stm.executeQuery(sql);
		ArrayList<Customer> customerList = new ArrayList<Customer>();

		Customer cus = new Customer();
		while(rst.next()) {
			
			
			cus.setCustomerId(rst.getString("Cid"));
			cus.setNIC(rst.getString("NIC"));
			cus.setCustomerName(rst.getString("Name"));
			cus.setEmail(rst.getString("Email"));
			cus.setContact(rst.getString("Contact"));
			cus.setShop_Address(rst.getString("Shop_address"));
			cus.setShop_Name(rst.getString("shop_Name"));
			cus.setC_address(rst.getString("c_address"));
			cus.setPassword(rst.getString("password"));
			
			
		}
		return cus;
		
	}
	@Override
	public boolean updateCustomer(Customer cus, String Cid) throws SQLException {
		String sql ="update client set NIC='" + cus.getNIC() + "',Name='" + cus.getCustomerName() + "',Email='" + cus.getEmail() +"',Contact='"+cus.getContact()+"',Shop_Address='"+cus.getShop_Address()+"',Shop_Name='"+cus.getShop_Name()+"',C_address='"+cus.getC_address()+ "' where Cid = '" + Cid + "'";
		PreparedStatement stm = connection.prepareStatement(sql);

		int res = stm.executeUpdate();
		if(res > 0)
			return true;
		else
		return false;
	}
	



}
