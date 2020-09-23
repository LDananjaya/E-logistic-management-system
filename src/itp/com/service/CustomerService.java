package itp.com.service;

import java.sql.SQLException;
import java.util.ArrayList;


import itp.com.model.Customer;

public interface CustomerService {
	static void addItem(Customer cus) {
		
	
	}
	boolean addNewCustomer(Customer cus)throws SQLException;
	
	public ArrayList<Customer> getAllCustomer()throws SQLException;
	
	Customer getCustomerDetails(String searchNo) throws SQLException ;
	
	boolean updateCustomer(Customer cus, String Cid) throws SQLException;
	
	
	//boolean loginvalidation(Customer cus)throws SQLException;
	//{
		// TODO Auto-generated method stub
		//return false;
	//}
	//boolean updateCustomer(Customer cus) throws SQLException;
	
	
	
	}

