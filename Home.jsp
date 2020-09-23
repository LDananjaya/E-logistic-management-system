<%@page import="itp.com.model.Customer"%>
<%
	if(Customer.loggedIn){
		
	}else{
		response.sendRedirect("/E-Logistic/index.jsp");
	}
%>
<html>
    <head>
        <title>Smak agency</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="Css/headfooter.css">       
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

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
                                            
                                              
                        </li>  <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                                         
                        </li> <li>
                                <a></a>                      
                        </li> <li>
                                <a></a>                      
                        <li class="main">
                                <a href="customerMap.jsp">Customer map</a>                     
                        <li class="main">
                                <a href="NewFileX.jsp">REF</a>                     
                        </li>                      
                        <li class="main">
                                <a href="ProfileView.jsp">profile</a>
                        </li>
                        <li class="main">
                        		<a href="index.jsp">logout</a>
                        </li>
                </ul>
       
        
        </header>
        <!--Navigation bar-->
     
        <!-- Slider-->
         <div id="slider">
                <div id="headerSlider" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#headerSlider" data-slide-to="0" class="active"></li>
                <li data-target="#headerSlider" data-slide-to="1"></li>
                <li data-target="#headerSlider" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="img/smak2.png" class="d-block w-100">
                    <div class="carousel-caption">
                        
                    </div>
                </div>
                <div class="carousel-item">
                  <img src="img/SMAK.jpg" class="d-block w-100">
                    <div class="carousel-caption">
                        
                    </div>
                </div>
                <div class="carousel-item">
                  <img src="img/bite2.jpg" class="d-block w-100">
                    <div class="carousel-caption">
                        <h5>We are Smak </h5>
                    </div>
                </div>
              </div>
              <a class="carousel-control-prev" href="#headerSlider" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#headerSlider" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
           
        </div>
        <!--About-->
        <section id="about">
            <div class="container">
            <div class="row">
                <div class="col-md-6">
                <h2>About Us</h2>
                    <div class="about-content">
                       ydtr uygiuhsf seifygsefe fwi4ugi4uthu4th tuhtwiuw w4iuhw4ut .we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.we are smak.
                    </div>
                    <button type="button" class="btn btn-primary">Read more>></button>
                </div>
                <div class="col-md-6 skills-bar">
                    <p>Expe</p>
                        <div class="progress">
                          <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">25%</div>
                        </div>
                    <p>Expe</p>
                        <div class="progress">
                          <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: 75%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">75%</div>
                        </div>
                    <p>Expe</p>
                        <div class="progress">
                          <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: 55%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">55%</div>
                        </div>
                    <p>Expe</p>
                        <div class="progress">
                          <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: 80%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">80%</div>
                        </div>
                </div>
                </div>
            </div>    
        </section> 
        
        <!--Event buttons-->
        
        
        
        <!----Services--->
        <section id="services">
            <div class="container">
                <h1>Our Services</h1>
                <div class="row services">
                    <div class="col-md-3 text center text-center">
                        <div class="icon">
                            <i class="fa fa-wifi"></i>
                        </div>
                        <h3>safe transport</h3>
                        <p>ygf jhggiy ggiuy iugiugi giugiuhg</p>
                    </div>
                    
                    <div class="col-md-3 text center text-center">
                        <div class="icon">
                            <i class="fa fa-credit-card-alt"></i>
                        </div>
                        <h3>get Discounts</h3>
                        <p>according to your order we give you free products.jsj wwuhidue deyigded iuheud </p>
                    </div>
                    
                    <div class="col-md-3 text center text-center">
                        <div class="icon">
                            <i class="fa fa-gift"></i>
                        </div>
                        <h3>Elite-level Benefits</h3>
                        <p>According amount of transaction,the capability of getting credits/loans.</p>
                    </div>
                    
                    <div class="col-md-3 text center text-center">
                        <div class="icon">
                            <i class="fa fa-usd"></i>
                        </div>
                        <h3>good product Price</h3>
                        <p>Buy product with good price .you can choose your product as you wish.</p>
                    </div>
                    
                </div>
            </div>
        </section>   
        <!--Gallry-->
       
        <!--Contact Us-->
       
        <!----Footer-->
        <section id="footer">
            <div class="container text-center">
                <h5>Payment Methods</h5>
                <p>Payment methods we accept:</p>
                <i class="fa fa-cc-amex"></i>
                <i class="fa fa-cc-visa"></i>
                <i class="fa fa-cc-jcb"></i>
                <i class="fa fa-cc-mastercard"></i>
                <i class="fa fa-cc-diners-club"></i>
            </div>
        </section>
        <!--Js-->
        <script src="jsk/smooth-scroll.js"></script>
        <script>
            var scroll = new SmoothScroll('a[href*="#"]');
        </script>
    </body>
</html>