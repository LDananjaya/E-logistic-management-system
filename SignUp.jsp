<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="Css/signup.css">
 <link rel="stylesheet" type="text/css" href="Css/headfooter.css">
<title>SignUp</title>
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
	
	function fillfields(){
		
		document.getElementById("txt_fname").value = "Lahiru";
		document.getElementById("email").value = "Lahiru98@gmail.com";
		document.getElementById("C_address").value = "Nawagamuwa";
		document.getElementById("contact").value = "0757652814";
		document.getElementById("NIC").value = "199833710520";
		document.getElementById("shop_Name").value = "Lahiru Stores";
		document.getElementById("shop_Address").value = "kaduwela";
		document.getElementById("txt_pw").value = "Lahiru123";
		
		
	}



</script>
<body>
<header>
                <!--  img class="backImg" src="images/SMAK_Logo.jpg"-->
                
                <ul>
                        <li id="name">Smak distributors&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</li>
                        <li class="main">
                                <!-- a href="Home.jsp">Home</a-->
                        </li>
                        <li class="main">
                                <!--a href="Cart.jsp">Cart</a-->
                        </li>
                        <li class="main">
                                <!--  a href="index.jsp">Login</a>-->
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>                        
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>
                        </li><li>
                                <a></a>                      
                        </li><li>
                                <a></a>                      
                        </li><li>
                                <a></a>                      
                        </li><li>
                                <a></a>                      
                        </li><li>
                                <a></a>               
                        </li><li>
                                <a></a>                       
                        </li><li>
                                <a></a>                       
                        </li><li>
                                <a></a>                       
                        </li><li>
                                <a></a>                      
                                            
                        </li> <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        </li>                      
                        <li class="main">
                                <!-- a href="ProfileView.jsp">profile</a-->
                        </li>
                        <li class="main">
                        		<a href="index.jsp">Login</a>
                        </li>
                </ul>
       
        
        </header>
        <form action ="AddCustomerServlet" method ="post">
                <h1> Sign up </h1>
<!-- required -->
                <label>Name :</label><br/>
                <input type="text"   name="Name" value=" "id="txt_fname"/><br/>
                
                <label>Email :</label><br/>
                <input  type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2, 3}$" name="Email" value=" "id="email"/><br/>
                <!-- pattern="/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/" -->
                
                <label>Customer Address :</label><br/>
                <input type="text"   name="C_address" value=" "id="C_address"/><br/>
                
                <label>Contact Number :</label><br/>
                <input type="text" pattern="[0-9]{10}"  name="Contact" value=" "id="contact"/><br/>
                <!--  pattern="(0/94)?[0-9]{9}" -->
                <label>NIC :</label><br/>
                <input type="text" pattern="[0-9]{12}"  name="NIC" value=" "id="NIC"/><br/>
                
                <label>Shop Name :</label><br/>
                <input type="text"   name="Shop_Name" value=" "id="shop_Name"/><br/>
                
                <label>Shop Address :</label><br/>
                <input type="text"   name="Shop_Address" value=" "id="shop_Address"/><br/>
        
                <label>Password :</label><br/>
                <input type="password"  pattern=".{6,}" name="password" value=""id="txt_pw"/><br/>
        
             
                <Button type="submit" placeholder="SignUp" name="SignUp" onclick="validation();">SignUp</Button>
   				<br/>
   				<button onclick="fillfields();">DEMO</button>
        </form>
</body>
</html>