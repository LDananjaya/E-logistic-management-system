<!DOCTYPE html>
<html>
<head>


 <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 45px;
  background-color: #f1f1f1;
  cursor: pointer;
  margin-left:180px;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}


.card {
  width: 500px;
  height: 300px;
  overflow: hidden;
  border: none;
}

.card img {
    width: 100%;
    min-height: 100%;
}

.cardlogo {
  width: 160px;
  height: 80px;
  overflow: hidden;
  
}

.cardlogo img {
    width: 100%;
    min-height: 100%;
}

.row{
	padding-left:100px;

}

</style>
</head>
<body>

 <section id="nav-bar">
              <nav class="navbar navbar-expand-lg navbar-light">
              <a class="navbar-brand" href="#"><img src="img/smakimages.jpg"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item">
                    <a class="nav-link" href="home.html">HOME</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#about">ABOUT US</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#services">PRODUCTS</a>
                  </li>
                    <li class="nav-item">
                    <a class="nav-link " href="#services">Our services</a>
                  </li>
                     <li class="nav-item">
                    <a class="nav-link " href="E:\ITP\loyaltyhome\loyaltyhome.html">LOYALTY CARD</a>
                  </li>
                     <li class="nav-item">
                    <a class="nav-link " href="#promo">GALLERY</a>
                  </li>
                     <li class="nav-item">
                    <a class="nav-link " href="#">TRANSPORT</a>
                 
                </ul>
              </div>
            </nav>
        
        </section>

<h2 style="color:red ;font-size:200%;margin-left:450px">SMAK Product List</h2>
<div class="cardlogo">
      <img src="img/smaklogo.png" alt="Avatar">
       
 </div>



<br>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2></h2>
	<div class="card">
      <img src="img/mix.jpg" alt="Avatar">
       
     </div>
    <p style="color:red ;font-size:160%;">smak mixfruit</p>
	<button class="btn" onclick="">add</button>
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2></h2>
	<div class="card">
      <img src="img/wood.jpg" alt="Avatar">
   
     </div>
    <p style="color:red ;font-size:160%;">smak woodapple</p>
	<button class="btn" onclick="">add</button>
  </div>
</div>



<div class="row">
  <div class="column" style="background-color:#ccc;">
    <h2></h2>
	<div class="card">
      <img src="img/apple_juice.jpg" alt="Avatar">
       
     </div>
    <p style="color:red ;font-size:160%;">Smak apple</p>
	<button class="btn" onclick="">add</button>
  </div>
  <div class="column" style="background-color:#ddd;">
    <h2></h2>
	<div class="card">
      <img src="img/panikaju.jpg" alt="Avatar">
       
     </div>
    <p style="color:red ;font-size:160%;">smak panikaju</p>
	<button class="btn" onclick="">add</button>
  </div>
</div>
<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2></h2>
	<div class="card">
      <img src="img/marsh.jpg" alt="Avatar">
       
     </div>
    <p style="color:red ;font-size:160%;">smak marshmello</p>
	<button class="btn" onclick="">add</button>
   
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2></h2>
	<div class="card">
      <img src="img/choc_milk.jpg" alt="Avatar">
       
     </div>
    <p style="color:red ;font-size:160%;">smak choco</p>
	<button class="btn" onclick="">add</button>
  </div>
</div>


<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2></h2>
	<div class="card">
      <img src="img/murukku.jpg" alt="Avatar">
       
     </div>
    <p style="color:red ;font-size:160%;">smak bite</p>
	<button class="btn" onclick="">add</button>
   
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2></h2>
	<div class="card">
      <img src="img/water.png" alt="Avatar">
       
     </div>
    <p style="color:red ;font-size:160%;">smak water</p>
	<button class="btn" onclick="">add</button>
  </div>
</div>

</br>

<script>
// Get the elements with class="column"
var elements = document.getElementsByClassName("column");

// Declare a loop variable
var i;

// List View
function listView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "100%";
  }
}

// Grid View
function gridView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "50%";
  }
}

/* Optional: Add active class to the current button (highlight it) */
var container = document.getElementById("btnContainer");
var btns = container.getElementsByClassName("btn");


for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

</body>
</html>
