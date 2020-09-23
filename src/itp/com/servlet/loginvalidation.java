package itp.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import com.mysql.cj.protocol.Resultset;

import itp.com.model.Customer;
import itp.com.service.CustomerService;

/**
 * Servlet implementation class loginvalidation
 */
@WebServlet("/loginvalidation")
public class loginvalidation extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	private static final String CONTENT_TYPE ="text/html; charset=ISO-8859-1";
       private static Connection conn;
      
       private static final String Database_URL="jdbc:mysql://localhost:3307/elms";
       private static final String DB_USER = "root";
       private static final String DB_PASS = "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginvalidation() {
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
		
		String customerName =request.getParameter("name");
		String password = request.getParameter("password");
		boolean result = checkPassword(customerName, password);
		
		response.setContentType(CONTENT_TYPE);
		PrintWriter out = response.getWriter();
		
		//out.println("<html>");
		//out.println("<body>");
		if (result == true) {
			//RequestDispatcher req = request.getRequestDispatcher("Home.jsp");
			//req.include(request, response);
			
			response.sendRedirect("/E-Logistic/Home.jsp");
			include(request, response);
		}else{
			//RequestDispatcher req = request.getRequestDispatcher("index.jsp");
			//req.include(request, response);
			
			response.sendRedirect("/E-Logistic/index.jsp");
			include(request, response);
		}
}
	
	
	
	
	private void include(HttpServletRequest request, HttpServletResponse response) {
	// TODO Auto-generated method stub
	
	}
		//out.print("</body></html>");
		//out.close();
		
		
	

	private boolean checkPassword(String customerName, String password) {
		// TODO Auto-generated method stub
	try {	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/elms","root","");
			conn.setAutoCommit(true);
		}
		catch (Exception e) {
			System.out.print("connection failed" +e.toString());
			// TODO: handle exception
		}
		Statement statement = conn.createStatement();
		statement.executeQuery("select * from client where Name = ' " + customerName + "' and password = '" + password + "'");
		ResultSet rs =statement.getResultSet();

		while (rs.next()) {
			Customer.loggedIn = true;
			return true;
		}
		Customer.loggedIn = false;
		return false;
		

	}
	catch (Exception e){
		System.out.print("Exception in verify password()="+e.toString());
		return false;
	}
}
}
