package itp.com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itp.com.model.Customer;
import itp.com.service.CustomerService;
import itp.com.service.CustomerServiceImpl;

/**
 * Servlet implementation class UpdateCustomerServlet
 */
@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

    public UpdateCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Cid = request.getParameter("Cid");
		String customerName =request.getParameter("Name");
		String nic = request.getParameter("NIC");
		String email = request.getParameter("Email");
		String contact = request.getParameter("Contact");
		String shop_Address = request.getParameter("Shop_Address");
		String shop_Name = request.getParameter("Shop_Name");
		String c_address = request.getParameter("C_address");
		String password = request.getParameter("password");
		
		Customer cus = new Customer();
		//cus.setCustomerId(customerId);
		cus.setCustomerName(customerName);
		cus.setNIC(nic);
		cus.setEmail(email);
		cus.setContact(contact);
		cus.setShop_Address(shop_Address);
		cus.setShop_Name(shop_Name);
		cus.setC_address(c_address);
		cus.setPassword(password);
		
		CustomerService customerService = new CustomerServiceImpl();
		
		boolean isUpdated =false;
		try {
			isUpdated = customerService.updateCustomer(cus, Cid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(isUpdated =true) {
			response.sendRedirect("/E-Logistic/ProfileView.jsp");
			include(request, response);
		}
		
	}

	private void include(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

}
