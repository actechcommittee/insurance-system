<?php 
	require_once 'core/init.php';
	$companies = DB::getInstance()->get('companies', array())->results();
  $assets = DB::getInstance()->get('simulator_assets', array())->results();
  //print_array($_SESSION); die();
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
  <link rel="stylesheet" type="text/css" href="./assets/css/style.css">
  
  <link rel="stylesheet" href="assets/css/index.css">

  <script src="./assets/js/jquery-2.1.4.min.js"></script>
  <script src="./assets/js/bootstrap.min.js"></script>
  <style>
.city {display:none}

#componentLoadModal {
  display: none;
  position: fixed;
  z-index: 9999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.3);
}

/* Modal Content */
.specialmodal-content {
  position: relative;
  background-color:rgba(0,0,0,0.3);
  margin: auto;
  padding: 0;
  width: 90%;
  height: 100%;
  width: 100%;
}

.claimbutton {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #2196F3;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
  position: fixed;
}

.claimbutton:hover {background-color: #0b7dda}

.claimbutton:active {
  background-color: #0b7dda;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}   
</style>

   
</head>
<body>

<div id="wrapper">

<div id="componentLoadModal" class="modal">
<div class="specialmodal-content w3-display-container" id="componentLoadModalCallerId"><div class="w3-card-24 w3-yellow w3-display-topmiddle w3-round" id="explanationModal" style="width:40%;display: none;"> 
<div class="w3-container w3-padding w3-large">
<p id="explanationText"></p>
</div>
</div><span id="timerSpan" class="w3-display-middle w3-animate-fadding w3-text-shadow w3-text-deep-orange" style="font-size: 20em"></span><img src="" id="animationGif" class="w3-display-middle" style="width: 60%;height: 60%;display: none"><button id="makeClaim" class="claimbutton w3-display-middle" style="display: none;" data-toggle="tooltip" title="click the right tip to make claim"> Click Me to Make A Claim </button></div>
</div>

<?php if (!Session::exists("simulation_instance")): ?>
 
  <div id="instruction" class="w3-modal w3-animate-zoom" style="display: block">
  <div class="w3-modal-content">

    <header class="w3-container w3-teal">
      <h2></h2>
    </header>

    <div class="w3-container">
     <div class="w3-bar w3-border-bottom pop-up">
       <a href="#" class="tablink w3-bar-item w3-padding w3-hover-deep-orange" onclick="openCity(event, 'London')">Welcome</a>
       <a href="#" class="tablink w3-bar-item w3-padding w3-hover-orange" onclick="openCity(event, 'Paris')">Rules</a>
       <a href="#" class="tablink w3-bar-item w3-padding w3-hover-lime" onclick="openCity(event, 'Tokyo')">Setup</a>
      </div>

      <div id="London" class="w3-container city">
       <h4 class="well">
       Welcome to the insurance simulator! <br>Have a real time experience with the insurance world.</h4>
        <footer class="w3-container w3-teal w3-padding">
          <p><button class="w3-btn w3-white w3-hover-text-red w3-right" onclick="openCity(event, 'Paris')"> Next </button></p>
        </footer>
      </div>

      <div id="Paris" class="w3-container city">
       <h1 class="well">How the system works</h1>
        <ul>
          <li>An initial amount of GH&cent; 10000 is set for the purchase of insurance porducts</li>
          <li>Begin by selecting a maximum of five assets from both left and right panes</li>
          <li>Click on a particular asset to view and purchase insurance policies to secure the asset</li>
          <li>Once an insurance product is purchased, random events are simulated after 7 seconds</li>
          <li>The asset insured gets affected. The owner stands a chance of making insurance claim or not depending on the nature of the event occurring and the one insured against
             <ul>
                <li>Where the simulated event lies within the scope of the insurance policy, the owner is allowed to make a claim after which the affected asset is restored</li>
                <li>The owner loses the asset otherwise</li>
             </ul>
          </li>

        </ul>
       <p></p>
    
          <footer class="w3-container w3-teal w3-padding">
          <p><button class="w3-btn w3-white w3-hover-text-red w3-right" onclick="openCity(event, 'Tokyo')"> Next </button></p>
        </footer>
      </div>

      <div id="Tokyo" class="w3-container city well1">
       <h1>Personal Data</h1>
       <form action="" method="post" id="form">
         <p>Please provide a username</p>
           <input class="input1" type="text" name="username">
         <p>Please select gender</p>
          <p><label><input class="input2" type="radio" name="gender" value="male"><span>Male</span></label>
            <label><input class="input2" type="radio" name="gender" value="female"><span>Female</span></label>
          </p>
        </form>
        <footer class="w3-container w3-teal w3-padding">
          <p><button class="w3-btn w3-white w3-hover-text-red w3-right" onclick="setSession('start')"> continue </button></p>
        </footer>
      </div>
    </div>

   

  </div>
</div>
<?php endif?>

<div id="help" class="w3-modal w3-animate-zoom">
  <div class="w3-modal-content">

    <header class="w3-container w3-blue">
    <span onclick="document.getElementById('help').style.display='none'"
      class="w3-closebtn w3-xxlarge">&times;</span>
      <h2></h2>
    </header>

    <div class="w3-container">
       <?php if (Session::exists("simulation_stage")): ?>
                  <?php switch (Session::get("simulation_stage")):case 'Asset Selection': ?>
                  <h2>Please select five assets to proceed</h2>
                 <?php break;?>
                 <?php case 'Policy Selection'; ?>
                    <ul>
                      <li>Click on any asset in the bottom pane to view  insurance options</li>
                      <li>Click on any of the available policies to purchase it</li>
                      <li>Wait for the simulated event</li>
                      <li>After the simulated event you either make an insurance claim or lose your asset based on the nature of the event and the insurance policy</li>
                    </ul>
                 <?php break;?>
                 <?php endswitch?>
      <?php endif;?>
    </div>

    <footer class="w3-container w3-blue w3-padding">
      <p></p>
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
              
          </div>
          <?php if (Session::exists("simulation_stage") && (Session::get("simulation_stage") == 'Asset Selection')): ?>

          <?php for($i=0 ; $i<5;$i++): ?>
          <div id="leftHouseTwo" class="leftHouseImage" data-toggle="tooltip" title="<h3><?php echo $assets[$i]->name ?></h3>" data-placement="right"><img data-setid="<?php echo $assets[$i]->a_id ?>" class="Asset w3-card-24 w3-border-blue left" src="assets/images/simulator/assets/<?php echo $assets[$i]->img ?>" style="width:100%; height:100%;"></div>
          <?php endfor?>
          <?php else:?>
            <?php for($i=0 ; $i<5;$i++): ?>
              <div id="leftHouseTwo" class="leftHouseImage"><img data-setid="<?php echo $assets[$i]->a_id ?>" class="animateDisabled w3-card-24 w3-border-blue left" src="assets/images/simulator/assets/<?php echo $assets[$i]->img ?>" style="width:100%; height:100%;opacity:0.3"></div>
              <?php endfor?>
          <?php endif ?>
          </div>
        <!-- div on the right -->
          <div id="rightHouse">
          <!-- display initial amount -->
                <?php if(Session::exists('initial_amount')):?>
                    <span class="w3-text-white">Bal: </span><span class="w3-text-shadow w3-text-deep-orange w3-large"> GH&cent; <span id="initAmount"><?php echo number_format(Session::get('initial_amount'))?></span></span>
                <?php endif?>
                <div id="rightHouseOne" class="rightHouseImage">
                  
                </div>
              <?php if (Session::exists("simulation_stage") && (Session::get("simulation_stage") == 'Asset Selection')): ?>
                <?php for($i=5 ; $i<10;$i++): ?>
                <div id="rightHouseTwo" class="rightHouseImage" data-toggle="tooltip" title="<h3><?php echo $assets[$i]->name ?></h3>" data-placement="left"><img data-setid="<?php echo $assets[$i]->a_id ?>" class="Asset w3-hover-shadow w3-card-24" src="assets/images/simulator/assets/<?php echo $assets[$i]->img ?>" style="width:100%; height:100%;"></div>
              
              <?php endfor?>
              <?php else:?>
                <?php for($i=5 ; $i<10;$i++): ?>
                  <div id="leftHouseTwo" class="leftHouseImage"><img data-setid="<?php echo $assets[$i]->a_id ?>" class="animateDisabled w3-card-24 w3-border-blue left" src="assets/images/simulator/assets/<?php echo $assets[$i]->img ?>" style="width:100%; height:100%;opacity:0.3"></div>
                  <?php endfor?>
             <?php endif ?>
          </div>
        
        <!-- center div -->
          <div id="midCenter">
          <!-- control buttons -->
            <button class="btn btn-info" style="webkit-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);-moz-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);position: fixed;margin-left: 10px;border-radius: 30px" onclick="setSession('restart')"> Restart </button>
                  <button class="btn btn-danger" style="webkit-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);-moz-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);position: fixed;margin-left: 100px;border-radius: 30px" onclick="setSession('exit')"> Exit </button>
                  <button class="btn btn-warning" style="webkit-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);-moz-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);position: fixed;margin-left: 170px;border-radius: 30px" onclick="document.getElementById('help').style.display='block'"> Help </button>

             <!-- display avator image based on gender -->
               <?php if(Session::exists('username')):?>
                    <span class="w3-right w3-display-container center">
                      <?php if(Session::get('gender')=='male'):?>
                      <img class="imgAv" src="assets/images/simulator/avatarmale.png" width="170" height="170">
                      <?php else:?>
                      <img class="imgAv" src="assets/images/simulator/avatarfemale.png" width="170" height="170">
                      <?php endif?>
                       <span class="w3-display-topleft w3-text-white w3-large w3-padding center" style="margin: 170px auto; width: 170px;"  ><?php echo Session::get('username');?></span>
                    </span>
                <?php endif?>    

            <div id="match"><b>X</b><br><div id="matchstick"></div></div>
            <div id="stateMessage">
                <?php if (Session::exists("simulation_stage")): ?>
                  <?php switch (Session::get("simulation_stage")):case 'Asset Selection': ?>
                    <div id="continuetp" class="w3-modal w3-animate-zoom">
                          <div class="w3-modal-content" style="width: 50%;">

                            <header class="w3-container w3-blue">
                              <h2></h2>
                            </header>

                            <div class="w3-container">
                               You have selected a maximum of five assets. Click on continue button to move on to the next level or reset to reselect your assets.
                            </div>

                            <footer class="w3-container w3-blue w3-padding" style="text-align: right;">
                            <button class="w3-btn w3-white w3-hover-text-red w3-round" onclick="window.location='simulator.php'"> Reset </button>
                               <button class="w3-btn w3-white w3-hover-text-red w3-round" onclick="setSession('policies')"> Continue </button>
                            </footer>

                          </div>
                        </div>
                    <div class="alert alert-danger alert-autocloseable-danger w3-large" style="display: none;position:fixed;">
                          You can't select the same asset twice
                    </div>
                     <div class="alert alert-info alert-autocloseable w3-info" style="position:fixed;margin;margin-top: 20%;margin-right: 26%; margin-left: 12%">
                          Welcome, :), click on an asset in the left or right pane to select it ... <br><br>
                          <i> In order to proceed to the next stage, you have to select five assets</i>
                    </div>
                    <?php break; ?>
                    
                    <?php case 'Policy Selection': ?>
                      <div class="alert alert-warning alert-autocloseable-danger w3-large" style="display: none;position:fixed;width: 50%">
                          You have lost this property to an event, if it was insured as at the time of the ocurrence of the event under that event, your insurance company would have replaced it for you.
                    </div>
                      <div class="alert alert-success alert-autocloseable w3-info" style="position:fixed;margin-top: 20%;margin-right: 26%; margin-left: 12%">
                          Hey, Congratulations for coming this far! It's now time to insure your assets. <br>
                          <ul>
                            <li>Click on any of your assets to view available insurance options in the left pane</li>
                            <li>Subsequently click on any of the displayed insurance policies to purchase it</li>
                          </ul>
                
                    </div>

                    <?php break; ?>

                    <?php case '': ?>

                    <?php break; ?>
                  <?php endswitch?>
                <?php endif?>    
            </div>      
                  

                  <div id="inMidCenterDown">
                <?php if (Session::exists("theorder")&&Session::exists("theorderOne")):?>
                  <?php for($i=0;$i<=4;$i++):?>
                       <?php if (in_array(Session::get("theorderOne")[$i], Session::get("blackListed"))):?>
                         <div id="bottomHouseOne" class="bottomHouseImage" ><img class="bottom3imglostp w3-hover-shadow w3-card .animateDisabled" data-setid="<?=$_SESSION["theorderOne"][$i] ?>" src="<?=$_SESSION["theorder"][$i] ?>" style="width:100%; height:100%;opacity: 0.05"></div>
                       <?php else:?>
                         <div id="bottomHouseOne" class="bottomHouseImage" ><img class="bottom3imgp w3-hover-shadow w3-card" data-setid="<?=$_SESSION["theorderOne"][$i] ?>" src="<?=$_SESSION["theorder"][$i] ?>" style="width:100%; height:100%;"></div>
                       <?php endif?> 
                  <?php endfor?>
              <?php else:?>
                <div id="bottomHouseOne" class="bottomHouseImage"><img class="bottom3img w3-hover-shadow w3-card" src="assets/images/simulator/music.jpg" style="width:100%; height:100%;"></div>
                  <div id="bottomHouseTwo" class="bottomHouseImage"><img class="bottom3img w3-hover-shadow w3-card" src="assets/images/simulator/music.jpg" style="width:100%; height:100%;"></div>
                  <div id="bottomHouseThree" class="bottomHouseImage" title="buy music">
                       <img class="bottom3img w3-hover-shadow w3-card" src="assets/images/simulator/music.jpg" style="width:100%; height:100%;">
                  </div>
                  <div id="bottomHouseFour" class="bottomHouseImage"><img class="bottom3img w3-hover-shadow w3-card" src="assets/images/simulator/music.jpg" style="width:100%; height:100%;"></div>
                  <div id="bottomHouseFive" class="bottomHouseImage"><img class="bottom3img w3-hover-shadow w3-card" src="assets/images/simulator/music.jpg" style="width:100%; height:100%;"></div>
              <?php endif?>
                  </div>
          </div>
    </div>
</div>
</div>

  <audio loop id="mainTrack">
    <source src="assets/audio/wizKhalifa.mp3" type="audio/mpeg">                      
  </audio>

  <audio id="assetClick">
     <source src="assets/audio/asset_select.mp3" type="audio/mpeg">                     
  </audio>
  
  <audio id="assetClicked">
     <source src="assets/audio/asset_not.mp3" type="audio/mpeg">                     
  </audio>

</body>
  <script type="text/javascript" src="assets/js/index.js"></script>
<script type="text/javascript">

    // window.onbeforeunload = function(e){
    //   var dia = "refreshing this page may cause you to loose any progress you've made ...";
    //   e.returnValue = dia;
    //   return dia;
    // };
    $("[data-toggle='popover']").popover({
          html:true,
          trigger:'hover focus',
          placement:'right'
        });

        $("[data-toggle='tooltip']").tooltip({
          html:true,
        });

  var timer = 7;  
  var order = 0;
  var orderOne = [];
  var orderOnePics  = [];
    $(document).ajaxComplete(function() {
        $("[data-toggle='popover']").popover({
          html:true,
          trigger:'hover focus',
          placement:'right'
        });

        $("[data-toggle='tooltip']").tooltip({
          html:true,
        });

        $(".House").click(function(){
          var poleid = $(this).children("img").attr("data-poleid");
          var poleidAsset = $(this).children("img").attr("data-poleidAsset");
           var or = $(this).attr("data-original-title");
  $('.alert-autocloseable').fadeOut(1000);
    $('#match').hide();
    $('#inMidCenterDown').hide();
    $('#match').show(1000).animate({left:"20%",marginTop:"100px",width:"50%",height:"70%",borderRadius:"10px"},2000);
    $('#matchstick').load("includes/simulatorAjax.php",{housepole:poleid,houseasset:poleidAsset,hname:or});
  });

 }); 
    function setSession(directive) {
      $.post("./includes/simulatorAjax.php",
            {initialize: directive},
            function(result){
              //console.log(result);
                if(directive == "start") { 
                   document.getElementById('instruction').style.display='none';
                   var formData = $('#form').serialize();
                   $.ajax({
                            type: 'post',
                            url: 'includes/simulatorAjax.php',
                            data: formData
                          }) 
                          .done(function(data){
                            window.location = "simulator.php";
                      })
                   
                   $("#leftHouse").load("simulator.php #leftHouse > *");
                }

                if(directive == "exit")window.location = "index.php";
                if(directive == "restart")window.location = "simulator.php";
                if(directive == "policies"){

                  $.ajax({
                    type:"POST",
                    url:"./includes/simulatorAjax.php",
                    data: {theorder:window.orderOnePics,theorderOne:window.orderOne},
                    cache:false,
                    sucess:function(){
                      
                    }
                  });
                  document.getElementById('continuetp').style.display = 'none';
                  window.location = "simulator.php";//refresh page to switch session variable
                }
               

                $("#stateMessage").load("simulator.php #stateMessage > *");
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


function seriousPolicyEventAnimation(policyName,policyId,assetId,polePrice){
  // deduct payment
  var rawAmount = $("#initAmount").text();
  var currentAmount = parseInt(rawAmount.replace(/,/g , ""));
  var policyAmount = parseInt(polePrice);
  var newAmount = currentAmount - policyAmount;
  if (newAmount < 0) {
    alert("You don't have enough money to purchase this policy, your current balance is "+rawAmount+" Ghana Cedis");
  }else{
    // perform ajax request to update user balance
    $.ajax({
      type:"POST",
      url:"./includes/simulatorAjax.php",
      data: {newAmount:newAmount},
      cache:false,
      sucess:function(){}
    });
    $("#initAmount").text(newAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));

    // show countdown
    $('#match').hide();
    $('#inMidCenterDown').show(2000);
    document.getElementById('componentLoadModal').style.display = "block";
    var stid = setInterval(function(){$("#timerSpan").text(window.timer--);if(window.timer < -1){clearInterval(stid);$("#timerSpan").empty();timer = 7};},1000);

    
    setTimeout(function(){
      // show event simulated animation on the asset in question
      // show prompt message telling user that the asset has been destroyed and how it got destroyed

      // there are assets which could contain various policies. we therefore pick an asset and randomly simulate an event corresponding to one of the policies ...
      switch(parseInt(assetId)) {
      case 1:
          var eve = [6,7];
          var randeve = eve[Math.floor(Math.random()*eve.length)];
          switch (randeve){
            case 6:
              // alert("animation for Home Theft and Burglary ");
              $("#animationGif").attr('src','assets/images/simulator/break_into_house.gif').fadeIn(1000).delay(5000).fadeOut(1000);
              var et = "Someone just broke into your house and stole your golden necklace (you must be really dosted) and other stuff, the person even stole the half bread on your table (can you imagine, this thief is so poor). Have you got a 'Home Theft and Burglary' policy? If yes then you don't have to worry, If know then go get some now (what are you waiting for go, hurry up).";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset affected. Please note that it is possible to buy more than one policy on an asset in the real sence of insurance.";
              break;
            case 7:
              // alert("animation for Comprehensive Homeowners");
              $("#animationGif").attr('src','assets/images/simulator/burning.gif').fadeIn(1000).delay(5000).fadeOut(1000);
              var et = "Efiewura hmmm, a very strong storm occuring in your area has ripped off the roof of your entire building, your tenants are complainig bitterly and you are in a hot situation (you better hurry before they beat you up). If you have a 'Comprehensive Homeowners' policy covering this type of event then just make a claim to your insurance company.";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset lost. Please note that it is possible to buy more than one policy on an asset"; 
          }
          break;
      case 2:
          var eve = [1,2,3];
          var randeve = eve[Math.floor(Math.random()*eve.length)];
          switch (randeve){
            case 1:
              // alert("animation for motor third party");
              $("#animationGif").attr('src','assets/images/simulator/motor_third_party.gif').fadeIn(1000).delay(6000).fadeOut(1000);
              var et = "Hey man, i don't know what happened or what you were thinking but you just run your car into someone's farm. Yeah you really did and now the guy is hotting you (hihihihi). But hey smile there is definitely a third party policy on your car and this is merely the problem of the insurance company not yours.";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset lost. Please note that it is possible to buy more than one policy on an asset";
              break;
            case 2:
              // alert("animation for Motor Third Party Fire & Theft");
              $("#animationGif").attr('src','assets/images/simulator/motor_fire.gif').fadeIn(1000).delay(6000).fadeOut(1000);
              var et = "Your car is burning ... its probably too late to do something about it now, in fact don't worry yourself if you have a 'Third Party Fire & Theft' policy on the car. Insurance would take care of it.";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset lost. Please note that it is possible to buy more than one policy on an asset";
              break;
            case 3:
              // alert("animation for Motor Comprehensive Cover");
              $("#animationGif").attr('src','assets/images/simulator/motor_crash.gif').fadeIn(1000).delay(6000).fadeOut(1000);
              var et = "You just crashed your motor into a wall (you really need to go for an eye test) and though by the grace of God you only had a few bruises here and there, the motor is condemned to trash, awwwww sorry but if you've got a 'Motor Comprehensive Cover' on it, your insurance company would probably replace it for you.";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset lost. Please note that it is possible to buy more than one policy on an asset";
              break;    
          }
          break;
      case 3:
          var eve = [4,5];
          var randeve = eve[Math.floor(Math.random()*eve.length)];
          switch (randeve){
            case 4:
              // alert("animation for Industrial Fire & Theft");
              $("#animationGif").attr('src','assets/images/simulator/burning.gif').fadeIn(1000).delay(5000).fadeOut(1000);
              var et = "OMG! some robbers broke into your company premises, stole all of your cash and as stupid as they are they also set fire to the building. So now you have lost your company building. However if you have an insurance on this specific type of event then chilax :)";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset lost. Please note that it is possible to buy more than one policy on an asset";
              break;
            case 5:
              // alert("animation for Fire Loss of Profit and Consequential Lost");
              $("#animationGif").attr('src','assets/images/simulator/burning.gif').fadeIn(1000).delay(5000).fadeOut(1000);
              var et = "Yeah your company just got burnt, and due to that you've lost all your goods in stock and some cash. Oops! don't worry, your insurance company has got you covered :)";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset lost. Please note that it is possible to buy more than one policy on an asset";
              break;   
          }
          break;
      case 4:
          
          break;
      case 5:
          
          break;
      case 6:
          
          break;
      case 7:
          
          break;
      case 8:
          var eve = [8,9];
          var randeve = eve[Math.floor(Math.random()*eve.length)];
          switch (randeve){
            case 8:
              // alert("animation for Theft Of Phone");
              $("#animationGif").attr('src','assets/images/simulator/fone_theft.gif').fadeIn(1000).delay(6000).fadeOut(1000);
              var et = "Oops! your phone just got stolen by some very bad guys, if you insured your phone against theft don't worry your insurance company will replace it for you :)";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset lost. Please note that it is possible to buy more than one policy on an asset";
              break;
            case 9:
              // alert("animation for Damage Of Phone");
              $("#animationGif").attr('src','assets/images/simulator/fone_damage.gif').fadeIn(1000).delay(6000).fadeOut(1000);
              var et = "Oops! your phone has fallen in water and it's not functioning properly even after you dried it in the sun :). Anyway, you don't have to worry if you've insured your phone against damage by falling in water.";
              var nce = "This is the scenario where the simulated event is not the one covered by the insurance policy and hence no claim can be made for the asset lost. Please note that it is possible to buy more than one policy on an asset";
              break;   
          }
          break;
      case 9:
          
          break;
      case 10:
          
          break;            
      default:        
      } 
      setTimeout(function(){
        // cross out or blur destroyed asset
        $('.bottom3imgp[data-setid='+assetId+']').css('opacity',0.05);
        // clear leftHouse 
        $("#leftHouse").empty();  
        //    display the event that just happend
        $("#explanationText").html(et);
        $("#explanationModal").addClass('w3-blue');
        $("#explanationModal").removeClass('w3-yellow');
        $("#explanationModal").fadeIn(1000).animate({marginTop:"250px"},1000).delay(7000).animate({marginTop:"0px"},1000).fadeOut(1000,function(){
          // revert colors
          $("#explanationModal").removeClass('w3-blue');
          $("#explanationModal").addClass('w3-yellow');
          // if it's covered under the event display make claim button
          // if it's not covered under the event display explanation text
          //randeve == policyId
          if (randeve == policyId) {
            if(confirm("An event you insured against has occurred and as such you need to notify the insurance company to make a claim  (if you don't lodge a claim the insurance company would not be able to indemnify you). Click OK to make claim or click Cancel") == true){
                $("#makeClaim").attr("data-assetID",assetId);
                $("#makeClaim").show();
              }else{
                $.ajax({
                  type:"POST",
                  url:"./includes/simulatorAjax.php",
                  data: {newBlack:assetId},
                  cache:false,
                  sucess:function(){}
                });
                $('.bottom3imgp[data-setid='+assetId+']').addClass('bottom3imglostp');
                $('.bottom3imgp[data-setid='+assetId+']').removeClass('bottom3imgp');
                document.getElementById('componentLoadModal').style.display = "none";
              }
          }else{
            $.ajax({
              type:"POST",
              url:"./includes/simulatorAjax.php",
              data: {newBlack:assetId},
              cache:false,
              sucess:function(){}
            });
            $("#explanationText").html(nce);
            $("#explanationModal").fadeIn(1000).animate({marginTop:"250px"},2000).delay(10000).animate({marginTop:"0px"},1500).fadeOut(1000,function(){
                $('.bottom3imgp[data-setid='+assetId+']').addClass('bottom3imglostp');
                $('.bottom3imgp[data-setid='+assetId+']').removeClass('bottom3imgp');
              document.getElementById('componentLoadModal').style.display = "none";
            });
          }
      });
     },7000);   
    },9000);
  }
}
</script>
</html>