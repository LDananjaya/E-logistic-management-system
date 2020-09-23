<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="Css/headfooter.css">
<link rel="stylesheet" type="text/css" href="Css/orderpage.css">
<title>Order</title>
</head>
<body>
<header>
                <!--  img class="backImg" src="images/SMAK_Logo.jpg"-->
                
                <ul>
                        <li id="name">Smak distributors&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</li>
                        <li class="main">
                                <a href="Home.jsp">Home</a>
                        </li>
                        <li class="main">
                                <a href="Cart.jsp">Cart</a>
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
                        		<a href="index.jsp">Login</a>
                        </li>
                </ul>
       
        
        </header>	
<form>

		<h1> Order </h1>
		
	    <p>Item Name :</p>
       <input type="text" name="name" placeholder="name" >
       <p>Item No :</p>
       <input type="text" name="itemNo" placeholder="itemNo" >
       <p>Available Quantity :</p>
       <input type="text" name="qnt" placeholder="quantity" >
       <p>Select Quantity :</p>
       <input type="text" name="qnt" placeholder="quantity" >
       <p>Total :</p>
       <input type="text" name="qnt" placeholder="quantity" >
       
       <!--  a type="submit" name="submit" href="Cart.jsp"value="Order">Order</a>-->
       <Button  placeholder="Order" name="Order"><a href="Cart.jsp">Order</a></Button>
       
       <!--a type="submit" href="Home.jsp" style="text-decoration:none">Cancel</a> -->
       <Button  placeholder="Cancel"  name="Cancel"><a href="Home.jsp">Cancel</a></Button>
	
</form>




</body>
</html>