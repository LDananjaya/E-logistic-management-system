<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>PAYMENTS</title>
        
        
        
        
        
        
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
        
        
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
        
        
        
        
        
        
        
        
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <link rel="stylesheet" href="WEB-INF/css/main.css" type="text/css"/>
        <link rel="stylesheet" href="css/Mynew.css" type="text/css">

        
        
        <!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
        <script type="text/javascript">
            
            function pop(){
                
                alert("Your loan is pending")
            }
            
            
            function validate(){
                
                var cid = document.getElementById("cid");
                var amount = document.getElementById("amount");
                var amountval = document.getElementById("amount").value;
                var name = document.getElementById("name");
                var description = document.getElementById("description");
                
                var valid = true;
                
                if(cid.value.length<=0  || amountval.length<=0 ||name.value.length<=0 || description.value.length<=0){
                    
                    alert("fill all the fields!");
                    valid = false;
                }else{
                    if(isNaN(amountval)){
                        alert("Enter a number ");
                        valid= false;
                    }
                }
                
                
                return valid;
                
            };
            
            
        </script>
        
         <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
         <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
         <script>
          $( function() {
          $( "#datepicker" ).datepicker();
          } );
          </script>
          
          <!--===============================================================================================-->
	
        
    </head>
    <body class="bodyImg" >
        
        
  <div  class="container-contact100" style="background-image: url('images/bg-01.jpg');">
      <div class="wrap-contact100">
          <form method="post" action="process.jsp" class="contact100-form validate-form" onsubmit=" return  validate();">
          
          <span class="contact100-form-title">
					Customer Payments
				</span>
          
 <div class="contact100-form-title"> 
     <span class="label-input100">
Client Id:<br>
     </span>
     <input class="input100" type="text" name="client_id" id="cid">
<br>
 </div>


<div class="contact100-form-title"> 
     <span class="label-input100">          
Amount:<br>
     </span>
    <input class="input100" type="number" name="amount" id="amount">
<br>
</div>
          
      
<div class="contact100-form-title"> 
     <span class="label-input100">         
Date :<br>
     </span>
<input class="input100" type="text" name="date" id="datepicker">
<br>
</div>


<div class="contact100-form-title"> 
     <span class="label-input100">
Client Name:<br>
     </span>
<input class="input100" type="text" name="client_name" id="name">

<br>
</div>

<div class="contact100-form-title"> 
     <span class="label-input100">
Description :<br>
     </span>
<input class="input100" type="text" name="description" id="description">
</div>








<div class="container-contact100-form-btn">
    <div class="wrap-contact100-form-btn">
        
        <div class="contact100-form-bgbtn"></div>

        <button><input class="contact100-form-btn" type="submit" value="pay" style="background-color: skyblue ; color: black " ></button>

     
         
    

    </div>
   
    
     

</div>
              
            
    
        
     

          
</form>
          
           <button  class="contact100-form-btn" style="background-color: skyblue ; color: black; margin-top: -60px; margin-left: 100px; "  onclick="pop()" >Loan</button>
      </div>
  </div>
            
            
        
        
        
        
        
        
<!--===============================================================================================-->
	
    </body>
</html>
