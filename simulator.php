<?php 

	require_once 'core/init.php';


	$companies = DB::getInstance()->get('companies', array())->results();


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
  <link rel="stylesheet" type="text/css" href="./assets/Semantic-UI-master/dist/semantic.min.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/w3.css">
  
  <link rel="stylesheet" href="assets/css/index.css">

  <script src="./assets/js/jquery-2.1.4.min.js"></script>
  <script src="./assets/js/bootstrap.min.js"></script>
  <script src="./assets/Semantic-UI-master/dist/semantic.min.js"></script>
  <script type="text/javascript" src="assets/js/index.js"></script>

  <script type="text/javascript">
     $(function () { $("[data-toggle='popover']").popover({
        html:true,
        trigger:'hover focus'
      });
   });
  </script>
   
</head>
<body>

<div id="wrapper">
  
<!-- overall wrapper -->
<div id="banner">
    <!-- wrap the divs -->
    <div id="indexWrapper">
            <!-- div on the left -->
          <div id="leftHouse">
          <div id="leftHouseOne">
          </div>
          <div id="leftHouseTwo" data-toggle="popover" title="<h3>Home Insurance</h3>" data-content="<p style='color:black'>this type of insurance makes sure that in event of any theft or burglary</p>"><img src="assets/images/simulator/home.jpg" style="width:100%; height:100%;"></div>
          <div id="leftHouseFour" title="shopping"><img src="assets/images/simulator/shop.jpg" style="width:100%; height:100%;"></div>
          <div id="leftHouseThree" title="restaurant"><img src="assets/images/simulator/restaurant.jpg" style="width:100%; height:100%;"></div>
          <div id="leftHouseFive" title="property"><img src="assets/images/simulator/property.jpg" style="width:100%; height:100%;"></div>
          <div id="leftHouseSix" title="hospital"><img src="assets/images/simulator/hospital.jpg" style="width:100%; height:100%;"></div>
          </div>
        <!-- div on the right -->
          <div id="rightHouse">
                <div id="rightHouseOne"></div>
              <div id="rightHouseTwo" title="award"><img src="assets/images/simulator/award.jpg" style="width:100%; height:100%;"></div>
              <div id="rightHouseThree"><img src="assets/images/simulator/bank4.jpg" style="width:100%; height:100%;"></div>
              <div id="rightHouseFour"><img src="assets/images/simulator/game.png" style="width:100%; height:100%;"></div>
              <div id="rightHouseFive"><img src="assets/images/simulator/farm.jpg" style="width:100%; height:100%;"></div>
              <div id="rightHouseSix" title="Stock Exchange Market"><img src="assets/images/simulator/stockExchange.jpg" style="width:100%; height:100%;"></div>
          </div>
        <!-- center div -->
          <div id="midCenter">


<!-- display in da center anim {the left bar}-->
<div id="matchLeftTwo"><b>X</b><br>Welcome home</div>
<div id="matchLeftThree"><b>X</b><br>Restaurant</div>
<div id="matchLeftFour"><b>X</b><br>Shopping</div>
<div id="matchLeftFive"><b>X</b><br>Property</div>
<div id="matchLeftSix"><b>X</b><br>Hospital</div>

                      <!-- display in da center anim {the right bar}-->
                      <div id="matchrightTwo"><b>X</b><br>Awards</div>
                      <div id="matchrightThree"><b>X</b><br>Bank</div>
                      <div id="matchrightFour"><b>X</b><br>Gamble</div>
                      <div id="matchrightFive"><b>X</b><br>Farm</div>
                      <div id="matchrightSix"><b>X</b><br>Stock Exchange</div>





          <!-- bottom of the div -->

                  <div id="inMidCenterDown">

                      <div id="bottomHouseOne">here</div>
                  <div id="bottomHouseTwo">here</div>
                  <div id="bottomHouseThree" title="buy music">
                       <img src="assets/images/simulator/music.jpg" style="width:100%; height:100%;">
                      <audio controls autoplay>
                         <source src="assets/audio/wizKhalifa.mp3" type="audio/mpeg">                      
                      </audio>
                  </div>
                  <div id="bottomHouseFour"title="Property level"></div>
                  <div id="bottomHouseFive">here</div>
                  <div id="bottomHouseSix">here</div>

                  </div>
          </div>
    </div>
</div>
</div>
</body>

</html>