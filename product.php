<?php 

	require_once 'core/init.php';

  
  $c=0;

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
  <title>Actec | Insurance Products</title>
  <link rel="stylesheet" type="text/css" href="./assets/Semantic-UI-master/dist/semantic.min.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/w3.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/font-awesome.min.css">

  <script src="./assets/js/jquery-2.1.4.min.js"></script>
  <script src="./assets/js/bootstrap.min.js"></script>
  <script src="./assets/Semantic-UI-master/dist/semantic.min.js"></script>

  <style type="text/css">
      
        #faopen {
                position: relative; /* Set the navbar to fixed position */
                top: 0; /* Position the navbar at the top of the page */
                z-index: 100;
                display: none;
              }

        .activeItem.item.w3-hover-shadow{
          background-color: #880000!important;
          color:white!important;
        } 

        .activeItem.item.w3-hover-shadow:hover{
          background-color: #880000!important;
          color:white!important;
        } 

        @media only screen and (max-width: 768px) {
            .navbar {
                background-color: teal;
                color:tomato!important;
            }
            .flex-center h3 {
                display: none;
            }
        }
  </style>

  <script type="text/javascript">
function w3_open() {
  document.getElementById("faopen").style.display = "none";
  document.getElementById("main").style.marginLeft = "100%";
  document.getElementById("mySidenav").style.width = "100%";
  document.getElementById("mySidenav").style.display = "block";
  
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("mySidenav").style.display = "none";
  document.getElementById("faopen").style.display = "block";
}

function editorAssistant(id){
       
                $("#main").load( "./includes/product_desc.php?id="+id);
                $("#clogo").load( "./includes/logos.php?id="+id);               
    }

    function Assistant(di){
       
                $("#main").load( "./includes/product_desc.php?di="+di);               
    }
  </script>

</head>
<body>
	 <?php require_once "./includes/header.php"; ?>

   <!-- <div class="ui top attached demo menu" style="">
    <a class="item">
      <i class="sidebar icon"></i>
      Menu
    </a>
  </div> -->
  <div class="">
  <!-- <i id="faopen" class="fa fa-navicon w3-xlarge w3_opennav" onclick="w3_open();" style="cursor:pointer;display:none;padding:2px 5px 3px 5px;margin:5px 5px 5px 5px"></i> -->
   <nav class="w3-sidenav sidenavopen w3-card-2 w3-border w3-margin-top" style="width:25%" id="mySidenav">
    <!-- <a href="#" onclick="w3_close();" class="w3-closenav closebtn">x</a> -->
   <?php foreach ($companies as $company) :?>
    <a class="w3-padding-16 <?php echo $bg[$c]; ?> w3-border-bottom w3-hover-shadow" href="javascript:void(0)" onclick="editorAssistant('<?php echo $company->id; ?>')">
        <?php echo $company->name;$c++; ?>
    </a>
  <?php endforeach;?>
    
  </nav>
</div>
  <div id="main" style="margin-left:30%">
  

  </div>

</body>

</html>