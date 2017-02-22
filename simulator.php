<?php 

	require_once 'core/init.php';


	$companies = DB::getInstance()->get('companies', array())->results();
  $assets = DB::getInstance()->get('simulator_assets', array())->results();
?>


<!DOCTYPE html>
<html>
<head>
  <!-- Standard Meta -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

  <!-- Site Properties -->
  <title>Actec | Insurance Simulator</title>
  <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/w3.css">
  
  <link rel="stylesheet" href="assets/css/index.css">

  <script src="./assets/js/jquery-2.1.4.min.js"></script>
  <script src="./assets/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="assets/js/index.js"></script>
  <style>
.city {display:none}
</style>
  <script type="text/javascript">
     $(function () { $("[data-toggle='popover']").popover({
        html:true,
        trigger:'hover focus'
      });
   });

     $(function () { $("[data-toggle='tooltip']").tooltip({
        html:true,
      });
   });

    function setSession(directive) {
      $.post("./includes/simulatorAjax.php",
            {initialize: directive},
            function(result){
              console.log(result);
                if(directive == "start")document.getElementById('instruction').style.display='none';
                if(directive == "exit")window.location = "index.php";
                if(directive == "restart")window.location = "simulator.php";
            }
            );
    }

$(document).ready(function(){
  document.getElementsByClassName("tablink")[0].click();
});
function openCity(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].classList.remove("w3-light-grey");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.classList.add("w3-light-grey");
}
  </script>
   
</head>
<body>

<div id="wrapper">
<?php if (!isset($_SESSION["simulation_instance"])): ?>
 
  <div id="instruction" class="w3-modal w3-animate-zoom" style="display: block">
  <div class="w3-modal-content">

    <header class="w3-container w3-teal">
      <h2>Modal Header</h2>
    </header>

    <div class="w3-container">
     <div class="w3-bar w3-border-bottom">
       <a href="#" class="tablink w3-bar-item w3-button" onclick="openCity(event, 'London')">London</a>
       <a href="#" class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Paris')">Paris</a>
       <a href="#" class="tablink w3-bar-item w3-button" onclick="openCity(event, 'Tokyo')">Tokyo</a>
      </div>

      <div id="London" class="w3-container city">
       <h1>London</h1>
       <p>London is the most populous city in the United Kingdom, with a metropolitan area of over 9 million inhabitants.</p>
       <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      </div>

      <div id="Paris" class="w3-container city">
       <h1>Paris</h1>
       <p>Paris is the capital of France.</p>
       <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>

      <div id="Tokyo" class="w3-container city">
       <h1>Tokyo</h1>
       <p>Tokyo is the capital of Japan.</p><br>
      </div>
    </div>

    <footer class="w3-container w3-teal w3-padding">
      <p>Modal Footer <button class="w3-btn w3-white w3-hover-text-red w3-right" onclick="setSession('start')"> continue </button></p>
    </footer>

  </div>
</div>
<?php endif?>

<div id="help" class="w3-modal w3-animate-zoom">
  <div class="w3-modal-content">

    <header class="w3-container w3-teal">
    <span onclick="document.getElementById('help').style.display='none'"
      class="w3-closebtn w3-xxlarge">&times;</span>
      <h2>Modal Header</h2>
    </header>

    <div class="w3-container">
      restart
    </div>

    <footer class="w3-container w3-teal w3-padding">
      <p>Modal Footer</p>
    </footer>

  </div>
</div>
<!-- overall wrapper -->
<div id="banner">
    <!-- wrap the divs -->
    <div id="indexWrapper">
            <!-- div on the left -->
          <div id="leftHouse">
          <div id="leftHouseOne" class="leftHouseImage">
              <button class="btn btn-info" style="webkit-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);-moz-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);" onclick="setSession('restart')"> Restart </button>
                  <button class="btn btn-danger" style="webkit-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);-moz-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);" onclick="setSession('exit')"> Exit </button>
                  <button class="btn btn-warning" style="webkit-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);-moz-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);" onclick="document.getElementById('help').style.display='block'"> Help </button>
          </div>
          <?php for($i=0 ; $i<5;$i++): ?>
          <div id="leftHouseTwo" class="leftHouseImage House" data-toggle="tooltip" title="<h3><?php echo $assets[$i]->name ?></h3>" data-placement="right"><img src="assets/images/simulator/assets/<?php echo $assets[$i]->img ?>" style="width:100%; height:100%;"></div>
          <?php endfor?>
          </div>
        <!-- div on the right -->
          <div id="rightHouse">
                <div id="rightHouseOne" class="rightHouseImage">
                  
                </div>
                <?php for($i=5 ; $i<10;$i++): ?>
              <div id="rightHouseTwo" class="rightHouseImage House" data-toggle="tooltip" title="<h3><?php echo $assets[$i]->name ?></h3>" data-placement="left"><img src="assets/images/simulator/assets/<?php echo $assets[$i]->img ?>" style="width:100%; height:100%;"></div>
              
              <?php endfor?>
          </div>
        <!-- center div -->
          <div id="midCenter">


<!-- display in da center anim {the left bar}-->
<div id="match"><b>X</b><br>Welcome home</div>
 <!-- <div id="matchLeftThree"><b>X</b><br>Restaurant</div>
<div id="matchLeftFour"><b>X</b><br>Shopping</div>
<div id="matchLeftFive"><b>X</b><br>Property</div>
<div id="matchLeftSix"><b>X</b><br>Hospital</div> -->

                      <!-- display in da center anim {the right bar}
                      <div id="matchrightTwo"><b>X</b><br>Awards</div>
                      <div id="matchrightThree"><b>X</b><br>Bank</div>
                      <div id="matchrightFour"><b>X</b><br>Gamble</div>
                      <div id="matchrightFive"><b>X</b><br>Farm</div>
                      <div id="matchrightSix"><b>X</b><br>Stock Exchange</div> -->





          <!-- bottom of the div -->

                  <div id="inMidCenterDown">

                      <div id="bottomHouseOne" class="bottomHouseImage">here</div>
                  <div id="bottomHouseTwo" class="bottomHouseImage">here</div>
                  <div id="bottomHouseThree" class="bottomHouseImage" title="buy music">
                       <img src="assets/images/simulator/music.jpg" style="width:100%; height:100%;">
                      <audio controls autoplay>
                         <source src="assets/audio/wizKhalifa.mp3" type="audio/mpeg">                      
                      </audio>
                  </div>
                  <div id="bottomHouseFour" title="Property level" class="bottomHouseImage">here</div>
                  <div id="bottomHouseFive" class="bottomHouseImage">here</div>

                  </div>
          </div>
    </div>
</div>
</div>
</body>

</html>