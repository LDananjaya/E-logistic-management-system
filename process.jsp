<%-- 
    Document   : process
    Created on : Sep 29, 2019, 9:06:21 AM
    Author     : Asus-pc
--%>

<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Css/util.css">
	<link rel="stylesheet" type="text/css" href="Css/main.css">
<!--===============================================================================================-->
        

<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<div  class="container-contact100" style="background-image: url('images/bg-01.jpg');">


<% 
    String client_Id = request.getParameter("client_id");
    String Amount = request.getParameter("amount");
    String Client_name = request.getParameter("client_name");
    String Description = request.getParameter("description");
    
    
    String dt = request.getParameter("date").toString();
   /* java.util.Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dt);
     java.sql.Date mySqlDate = new java.sql.Date(date.getTime()); */
    
   
        
    
  /*  SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
   java.util.Date startDate = format.parse(request.getParameter("date"));*/
                
    String client_t_pay_id ="CID"+request.getParameter("client_id")+request.getParameter("client_name");
    
    try {
        
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/elms","root","");
        
        PreparedStatement ps =con.prepareStatement("INSERT INTO temp_client_payments(ClientId,Amount,Date,c_name ,description,Client_paymentID)"+"values(?,?,?,?,?,?)");
          
        
        ps.setString(1,client_Id );
        ps.setString(2, Amount);
        ps.setString(3,dt);
        ps.setString(4, Client_name);
        ps.setString(5, Description);
        ps.setString(6, client_t_pay_id);
        ps.executeUpdate();
        
        
        
        //int i = st.executeUpdate("insert into temp_client_payments(client_id,amount,date,client_name,Description,C_pay_id) values (?,?,?,?,?,?)");
        
        System.out.println("Data is successfully inserted!");
        
        %>
       
         <div class="wrap-contact100">
        <span class="contact100-form-title">
					Payment seccessful !
				</span>
       <form>
<input class="contact100-form-btn" style="background-color: skyblue ; color: black " type="button" value="Back" onclick="window.location.href='payment.jsp'" />
</form>
         </div>
        <%
        
        } catch (Exception e) {
            
            System.out.print(e);
            e.printStackTrace();
        }

%>

</div>s