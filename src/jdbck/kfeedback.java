package jdbck;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class kfeedback
 */
@WebServlet("/kfeedback")
public class kfeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kfeedback() {
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
		try {
			
			
			String name=request.getParameter("firstname");
			String lname=request.getParameter("lastname");
			
			String email=request.getParameter("email");
			String msg=request.getParameter("subject");
			
			
			
			
			
			String sql="insert into feedbacks(fname,lname,email,message) values(?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/elms","root","");
			PreparedStatement ps=conn.prepareStatement(sql);

			ps.setString(1, name);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, msg);
			ps.executeUpdate();
			
			PrintWriter out=response.getWriter();
			out.println("you hava successfully give your feedback");
			
			conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smakdb","root","kisal400");
		//doGet(request, response);
	}
	
	
}
