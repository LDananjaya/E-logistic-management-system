<%@page import="itp.com.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/signup.css">
<title>Update Profile</title>
</head>
<script type="text/javascript">
function validation() {

	  //console.log("sdfsfsdfsf");
	  var Name = document.getElementById('txt_fname');
	  var Email = document.getElementById('email');
	  var C_address = document.getElementById('C_address');
	  var ContactNumber = document.getElementById('Contact');
	  var NIC = document.getElementById('NIC');
	  var Shop_Name = document.getElementById('Shop_Name');
	  var Shop_Address = document.getElementById('Shop_Addess');
	  var password = document.getElementById('txt_pw');
	  

	  var valid = true;
	  valid = Empty(Name.value.length, "Name must required");
	  if (valid == true) {
	      valid = Empty(Email.value, "Email must required");
	      if (valid == true) {
	          valid = Empty(C_address.value, "customer address must required");
	          if (valid == true) {
	              valid = Empty(ContactNumber.value, "please enter contact number");
	              if (valid == true){
	            	  valid = Empty(NIC.value, "please enter NIC");
	            	  if (valid == true){
	            		  valid = Empty(Shop_Name.value, "please enter Shop name");
	            		  if(valid == true){
	            			 valid = Empty(Shop_Address.value, "please enter Shop address");
	            			 if(valid == true){
	            				 valid = Empty(password.value, "please enter Password");
	       	                  	 if (valid == true){
	       	                        alert("successfully"); 
	            					 }
	            		 		 }
	            	 		 }
	                 
	                      }
	                  }      
	              }
	          }
	      }
	  }

	

	function Empty(value, message) {
	  if(value ==0)
	  {
	      alert(message);
	      return false;
	  }
	  return true;
	}
	

</script>
<body>

		<%String Cid = request.getParameter("Cid");%>
        <form action ="UpdateCustomerServlet?Cid=<%=Cid%>" method ="post">
                <h2> Update Profile </h2>

                <label>Name :</label><br/>
                <input type="text"  required name="Name" value=" "id="txt_fname"/><br/>
                
                <label>Email :</label><br/>
                <input type="text"  required name="Email" value=" "id="email"/><br/>
                
                <label>Customer Address :</label><br/>
                <input type="text"  required name="C_address" value=" "id="C_address"/><br/>
                
                <label>Contact Number :</label><br/>
                <input type="text"  required name="Contact" value=" "id="contact"/><br/>
                
                <label>NIC :</label><br/>
                <input type="text"  required name="NIC" value=" "id="NIC"/><br/>
                
                <label>Shop Name :</label><br/>
                <input type="text"  required name="Shop_Name" value=" "id="shop_Name"/><br/>
                
                <label>Shop Address :</label><br/>
                <input type="text"  required name="Shop_Address" value=" "id="shop_Address"/><br/>
                
                <label>Password :</label><br/>
                <input type="password"  required name="password" value=""id="txt_pw"/><br/>
        

        
                <!--  label>Re-Enter Password :</label><br/-->
                <!--  input type="password"  required name="pw1" value=""id="txt_pw1"/><br/-->


                <Button type="submit" placeholder="save" name="save" onclick="validation();">Update</Button>
                <a type="submit" href="ProfileView.jsp" class="cancelbtn" style="text-decoration:none">Cancel</a>
              
   				
        </form>

</body>
</html>