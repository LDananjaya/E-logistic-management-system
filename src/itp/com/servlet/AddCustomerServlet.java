package itp.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itp.com.model.Customer;
import itp.com.service.CustomerService;
import itp.com.service.CustomerServiceImpl;

/**
 * Servlet implementation class AddCustomerServlet
 */
@WebServlet("/AddCustomerServlet")
public class AddCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomerServlet() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		//String customerId = request.getParameter("CustomerId");
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
		
		if(customerName.isEmpty() || nic.isEmpty() || email.isEmpty() || contact.isEmpty() || shop_Address.isEmpty() || shop_Name.isEmpty() || c_address.isEmpty() || password.isEmpty()) {
			
			PrintWriter writer =response.getWriter();
			writer.println("<script>");
			writer.println("alert('All fields are required')");
			writer.println("</script>");
			
			RequestDispatcher req = request.getRequestDispatcher("SignUp.jsp");
			req.include(request, response);
		}
		else
		{
		
		try {
			boolean isAdded = customerService.addNewCustomer(cus);
			
			if(isAdded==true) {
				System.out.println("success");
				
				/*PrintWriter writer =response.getWriter();
				writer.println("<script>");
				writer.println("alert('Added Successfully')");
				writer.println("</script>");*/
				
				
				response.sendRedirect("/E-Logistic/index.jsp");
				include(request, response);
				return;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}

	private void include(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

}
