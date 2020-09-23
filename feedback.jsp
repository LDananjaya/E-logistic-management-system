<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<h1>FEEDBACK Form</h1>


  <div class="container">
  
    
    <form action="kfeedback" method="post">

    <label for="fname">First Name</label>
    <input type="text"  name="firstname" placeholder="Your name.." required="required">

    <label for="lname">Last Name</label>
    <input type="text"  name="lastname" placeholder="Your last name.." required="required">
    
    
    <label for="email">Email</label>
    <input type="text"   name="email" placeholder="Your E-mail.." required="required">
    <!-- pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$" -->
   
    <label for="subject">Subject</label>
    <textarea  name="subject" placeholder="Write something.." style="height:200px" required="required"></textarea>

    <input type="submit" value="SUBMIT">

  </form>
</div>


</body>
</html>