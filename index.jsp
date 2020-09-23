<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="Css/login.css">
 <link rel="stylesheet" type="text/css" href="Css/headfooter.css">
 <!--img class="backImg" src="images/background.jpg"-->
<title>LOGIN</title>
</head>
<script>  
function validation() {

	  var Name = document.getElementById('txt_fname');
	  var password = document.getElementById('txt_pw');

	  var valid = true;
	  valid = Empty(Name.value.length, "Name must required");
	  if (valid == true) {
	     valid = Empty(password.value, "please enter Password");
	       	 if (valid == true){
	       	     alert("successfully"); 
	            					 }
	       	
	            		 		 }
	  }

	function Empty(value, message) {
	  if(value ==0)
	  {
	      alert("login fail");
	      return false;
	  }
	  return true;
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
                                <!-- a href="Cart.jsp">Cart</a-->
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
                                <!--a href="ProfileView.jsp">profile</a-->
                        </li>
                        <li class="main">
                        		<a href="index.jsp">Login</a>
                        </li>
                </ul>
       
        
        </header>
	
	<div class="login-form">
	
		<form action ="loginvalidation" method ="post" onsubmit="return validateform()">
		 <h1> Login </h1>
       <p>User Name</p>
       <input type="text" name="name"id="txt_fname" placeholder="Enter Username" >
       <p>Password</p>
       <input type="password"  name="password" id="txt_pw" placeholder="Enter Password" >
                           
     	 <button type="submit" onclick="validation();" >Login</button>
    

       
      <a type="submit" href="SignUp.jsp" class="btn-signup" style="text-decoration:none">SignUp</a>   
          
       </form>
       
       </div>
       
              
         
         
             
</body>
</html>