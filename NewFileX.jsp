<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>SMAK | Matara Agency</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css"/>

  <!-- Bootstrap core CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <!-- Material Design Bootstrap -->
  <link href="Css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="Css/style.css" rel="stylesheet">
  <link href="Css/stock_style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

  <style>
      /* Set the size of the div element that contains the map */
     #map {
       height: 400px;  /* The height is 400 pixels */
       width: 100%;  /* The width is the width of the web page */
      }
   </style>
      
<script>
var map, infoWindow,nodemarker;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 6
        });
        infoWindow = new google.maps.InfoWindow;

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
           
            var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 19,
                    center: {lat:position.coords.latitude,lng: position.coords.longitude}
                });

          var marker = new google.maps.Marker({
          position: {lat:position.coords.latitude,lng: position.coords.longitude},
          map: map,
          draggable: true
        });

        document.getElementById("Latitude").value=parseFloat(position.coords.latitude).toFixed(6);
        document.getElementById("Longtitude").value=parseFloat(position.coords.longitude).toFixed(6);

        marker.addListener('dragend', function(dragted) {
                var location =JSON.parse(JSON.stringify(dragted.latLng));
                document.getElementById("Latitude").value=parseFloat(location.lat).toFixed(6);
                document.getElementById("Longtitude").value=parseFloat(location.lng).toFixed(6);
            });

          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
      }
</script>
  <script async defer
  src="https://maps.googleapis.com/maps/api/js?AIzaSyBKBP_gNreilUA_DsAcVFiHubZbI1CMayQ&callback=initMap">
</script>

</head>

<body>
<!--Navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark primary-color">

        <!-- Navbar brand -->
        <a class="navbar-brand" align="center" href="index.html">Matara <img src="SMAK.gif" width="8%"> Agency</a>
      
        
          <!-- Links -->
      
         
        </div>
        <!-- Collapsible content -->
      
      </nav>
  <!--/.Navbar-->
  


 
<img src="backsmack.gif" width="100%">
<div style="background-color: rgba(33, 89, 194, 0.753)">
    <form align = "center" name = "" method="POST" action="">
      <input type="text2" id="fname" name="ItemID" placeholder="UserName" required>
	  <input type="text2" id="fname" name="ItemID" placeholder="Password" required> &nbsp;&nbsp;
      
	  
	  <button type="submit" class="btn btn-info btn-sm" name="update" ><i class="fas fa-sign-in-alt"></i> &nbsp;&nbsp; Login</button>
	  <button type="submit" class="btn btn-info btn-sm" name="" ><i class="fas fa-plus"></i> &nbsp;&nbsp; SignUp</button>
    
      </form>
  </div>
  <br>
  <div class="container">
      <div class="row">
        <div class="col">
          
            <div class="row">
                <h1>Location Form <i class="fas fa-map-marker-alt" ></i></h1>
                <form action="" method="">
                        <!-- Default input -->
                        <div class="form-group">
                        
                          <label for="formGroupExampleInput">OwnerName</label>
                          <input type="text" class="form-control" value ="" name ="" id ="" placeholder="Arjuni Dilakshka" required>
                        </div>
                        <!-- Default input -->
                        <div class="form-group">
                          <label for="formGroupExampleInput2">Location</label>
                          <input type="text" class="form-control" value ="" name="" id="" placeholder="Location" required>
                        </div>
                        <div class="form-group">
                                <label for="formGroupExampleInput2">Color</label>
                                <input type="text" class="form-control" value ="" name="" id="" placeholder="Color" required>
                              </div>
                              <div class="row">
                              <div class="col">
                              <div class="form-group">
                                <label for="formGroupExampleInput2">Longtitiude</label>
                                <input type="text" class="form-control" value ="" name="" id="Longtitude" placeholder="Longtitude" required>
                              </div></div><div class="col">
                              <div class="form-group">
                                <label for="formGroupExampleInput2">Latitude</label>
                                <input type="text" class="form-control" value ="" name="" id="Latitude" placeholder="Latitude" required>
                              </div></div>
                              </div>

                        
                                        <button type="submit" class="btn btn-primary btn-md" name="" ><i class="fas fa-plus"></i> &nbsp;&nbsp; Add</button>
										                                        <button type="reset" class="btn btn-danger btn-md" name="" >Reset</button>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                      </form>
            </div>
        </div>
        <div class="col">
<div class="mapouter">
  <div class="gmap_canvas">
      <div id="map"></div>
  </div>
  <style>
  .mapouter{position:relative;text-align:right;height:500px;width:762px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:762px;}
  </style>
  </div>
        </div>
      </div>
   <br><br></div>
      <div class="container">
            <table id="dtBasicExample" class="table table-striped table-sm" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                        <th class="th-sm">OwnerName
                        </th>
                        <th class="th-sm">Location
                        </th>
                        <th class="th-sm">Color
                        </th>
                      
                        <th class="th-sm">Longtitiude
                        </th>
                        <th class="th-sm">Latitude
                        </th><th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>100</td>
                        <td>52</td>
                    
                        <td align ="center"><a href="StockItem.php?edit=<?php echo $row['id']; ?>"
                                class ="btn btn-info btn-sm" >
                                <i class="fa fa-edit"></i>
                              </a>
                                          <a href="StockItem_process.php?delete=<?php echo $row['id']; ?>"
                                class ="btn btn-danger btn-sm">
                                <i class="fa fa-trash"></i>
                              </a></td>
                      </tr>
                  </tbody>

                  </table>
    </div>
    </div>








<br><br><br>



<!-- Footer -->
<footer class="page-footer font-small mdb-color pt-4">

    <!-- Footer Links -->
    <div class="container text-center text-md-left">
  
      <!-- Footer links -->
      <div class="row text-center text-md-left mt-3 pb-3">
  
        <!-- Grid column -->
        <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
          <h6 class="text-uppercase mb-4 font-weight-bold">SMAK Matara Agency</h6>
          <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
            consectetur
            adipisicing elit.</p>
        </div>
        <!-- Grid column -->
  
        <hr class="w-100 clearfix d-md-none">
  
        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
          <h6 class="text-uppercase mb-4 font-weight-bold"></h6>
          <p>
            <a href="#!"></a>
          </p>
          <p>
            <a href="#!"></a>
          </p>
          <p>
            <a href="#!"></a>
          </p>
          <p>
            <a href="#!"></a>
          </p>
        </div>
        <!-- Grid column -->
  
        <hr class="w-100 clearfix d-md-none">
  
        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
          <h6 class="text-uppercase mb-4 font-weight-bold"> </h6>
          <p>
            <a href="#!"></a>
          </p>
          <p>
            <a href="#!"></a>
          </p>
          <p>
            <a href="#!"></a>
          </p>
          <p>
            <a href="#!"></a>
          </p>
        </div>
  
        <!-- Grid column -->
        <hr class="w-100 clearfix d-md-none">
  
        <!-- Grid column -->
   
        <!-- Grid column -->
  
      </div>
      <!-- Footer links -->
  
      <hr>
  
      <!-- Grid row -->
      <div class="row d-flex align-items-center">
  
        <!-- Grid column -->
        <div class="col-md-7 col-lg-8">
  
          <!--Copyright-->
          <p class="text-center text-md-left">© 2019 Copyright:
            <a href="https://mdbootstrap.com/education/bootstrap/">
              <strong> SMAK matara Agency</strong>
            </a>
          </p>
  
        </div>
        <!-- Grid column -->
  
        <!-- Grid column -->
        <div class="col-md-5 col-lg-4 ml-lg-0">
  
          <!-- Social buttons -->
          <div class="text-center text-md-right">
            <ul class="list-unstyled list-inline">
              <li class="list-inline-item">
                <a class="btn-floating btn-sm rgba-white-slight mx-1">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn-floating btn-sm rgba-white-slight mx-1">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn-floating btn-sm rgba-white-slight mx-1">
                  <i class="fab fa-google-plus-g"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn-floating btn-sm rgba-white-slight mx-1">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </li>
            </ul>
          </div>
  
        </div>
        <!-- Grid column -->
  
      </div>
      <!-- Grid row -->
  
    </div>
    <!-- Footer Links -->
  
  </footer>
  <!-- Footer -->
  
  <!--Ens of the footer-->        
  
  
  
  
  <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="JS/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="JS/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="JS/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="JS/mdb.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js"></script>
    <script type="text/javascript"> 
 // Data Picker Initialization
   $('.datepicker').pickadate({
weekdaysShort: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
showMonthsShort: true
})
    </script>
    <script type="text/javascript"> 
        $(document).ready(function () {
$('#dtBasicExample').DataTable();
$('.dataTables_length').addClass('bs-select');
});
    </script>
</body>
</html>
