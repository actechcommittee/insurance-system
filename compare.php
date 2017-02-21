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
  <title>Actec | Compare Products</title>
  <link rel="stylesheet" type="text/css" href="./assets/Semantic-UI-master/dist/semantic.min.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/w3.css">
  <link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

  <script src="./assets/js/jquery-2.1.4.min.js"></script>
  <script src="./assets/Semantic-UI-master/dist/semantic.min.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
   <style type="text/css">

        .activeItem.item.w3-hover-shadow{
          background-color: #880000!important;
          color:white;
        } 

        .activeItem.item.w3-hover-shadow:hover{
          background-color: #880000!important;
          color:white;
        } 
  </style>
  <script>
  $('form').keypress(function(event){
        if(event.which == 13){
            event.preventDefault();
        }
    });

    $(function(){
      $("#input").autocomplete({
        source:"./includes/ajax.php"
      });
    });


    function getData(uot) {
      $.get("./includes/product_compare.php",
            $(uot).serialize(),
            function(result){
              console.log(result);
                $("#productdiv").html(result);
            }
            );
    }

    function openModal(di,id,did){          
      document.getElementById(id).style.display='block';
      $(did).load( "./includes/product_desc.php?di="+di);                    
    }

    function closeModal(id,did){
      $(did).empty();
      document.getElementById(id).style.display='none'; 
    }
  </script>

</head>
<body>
	<?php require_once "./includes/header.php"; ?>
<div class="w3-row">  
<div id="productdiv" class="w3-col m8 l8"></div>
<div class="w3-col m4 l4"></div>
</div>
</body>

</html>