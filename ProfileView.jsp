<%@page import="itp.com.model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="itp.com.service.CustomerServiceImpl"%>
<%@page import="itp.com.service.CustomerService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="Css/headfooter.css">
<link rel="stylesheet" type="text/css" href="Css/ProfileViewCss.css">
<title>Profile View</title>
</head>
<body>
 <header>
                <!--  img class="backImg" src="images/SMAK_Logo.jpg"-->
                
                <ul>
                        <li id="name">Smak distributors&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</li>
                       
                        <li class="main">
                                <a href="Cart.jsp">Cart</a>
                        </li>
                        <li class="main">
                                <a href="grid.jsp">product List</a>
                        <li class="main">
                                <a href="feedback.jsp">Feedback</a>
                        <li class="main">
                                <a href="payment.jsp">payment</a>
                        </li><li>
                                <a></a>
                        
                        </li><li>
                                <a></a>
                                            
                        </li><li>
                                <a></a>                      
                        </li><li>
                                <a></a>                      
                        </li>  <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        </li>                      
                        <li class="main">
                                <a href="ProfileView.jsp">profile</a>
                        </li>
                        <li class="main">
                        		<a href="index.jsp">logout</a>
                        </li>
                </ul>
       
        
        </header>

<h1>Profiles</h1>

		<!--  form action ="SearchCustomerServlet" method ="post">
			
		<input type="text" placeholder="Cid" name="Cid"> <input type="submit" value="Search" name="Search" style="background-color: pink">
			
			<% Customer c1 = (Customer)request.getAttribute("customer");
				if (c1!=null) {
			%>
			
		<input type="text" placeholder="Name" name="name" value="<%=c1.getCustomerName()%>" >
		<br>
		<br>
			<input type="text" placeholder="Email" name="Email" value="<%=c1.getEmail()%>">
		<br>
		<br>
			<input type="text" placeholder="C_address" name="C_address" value="<%=c1.getC_address()%>">
		<br>
				<br>
			<input type="text" placeholder="Contact" name="Contact" value="<%=c1.getContact()%>">
		<br>
				<br>
			<input type="text" placeholder="NIC" name="NIC" value="<%=c1.getNIC()%>" >
		<br>
				<br>
			<input type="text" placeholder="Shop_Name" name="Shop_Name" value="<%=c1.getShop_Name()%>">
		<br>
						<br>
			<input type="text" placeholder="Shop_Address" name="Shop_Address" value="<%=c1.getShop_Address()%>">
		<br>

		<br>
		<% } %>
		</form -->
		<!-- form action="reportE" method="post">
		 <!-- Button type="submit" placeholder="report" name="report" >Genarate Report</Button-->
		 <!--a type="submit" href="report_test.jsp" class="btn-report" style="text-decoration:none">Genarate Report</a-->  
		</form-->
<div class="table-container">
	<table style="width:100%">
		
			<tr>
				<th>ID</th>
				<th>NIC</th>
				<th>Name</th>
				<th>Email</th>
				<th>Contact</th>
				<th>Shop Name</th>
				<th>Shop Address</th>
				<th>C.Address</th>
				<th></th>
				
			</tr>
		<%CustomerService sev = new CustomerServiceImpl();
	
				ArrayList<Customer>list = sev.getAllCustomer();
		
				for(Customer c:list){
				
		%>
					<tr>
					<td><%=c.getCustomerId()%></td>
					<td><%=c.getNIC()%></td>
					<td><%=c.getCustomerName()%></td>
					<td><%=c.getEmail()%></td>
					<td><%=c.getContact()%></td>
					<td><%=c.getShop_Name()%></td>
					<td><%=c.getShop_Address()%></td>
					<td><%=c.getC_address()%></td>
					
					
				
					<td>
					
					<form action="UpdateProfile.jsp?Cid=<%=c.getCustomerId()%>" method="post">
					
						
						
						<input type="hidden" name="" value="<%=c.getNIC()%>">
						<input type="hidden" name="" value="<%=c.getCustomerName()%>">
						<input type="hidden" name="" value="<%=c.getEmail()%>">
						<input type="hidden" name="" value="<%=c.getContact()%>">
						<input type="hidden" name="" value="<%=c.getShop_Name()%>">
						<input type="hidden" name="" value="<%=c.getShop_Address()%>">
						<input type="hidden" name="" value="<%=c.getC_address()%>">
						
						
						
						
						
						<input type="submit" name="btnUpdate" class="btnUpdate" value="Update">
						</form>
			</tr>
			
			
					
			<%
				}
			%>	

			
	</table>
	
	</div>
	
	

	<!--  -->
	
	
	
</body>
</html>