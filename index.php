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
  <title>Actec | Home</title>
  <link rel="stylesheet" type="text/css" href="./assets/Semantic-UI-master/dist/semantic.min.css">
  
  <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/w3.css">

  <script src="./assets/js/jquery-2.1.4.min.js"></script>
  <script src="./assets/js/bootstrap.min.js"></script>
  <script src="./assets/Semantic-UI-master/dist/semantic.min.js"></script>

  <script type="text/javascript">

$(document).on('click', '.pane div.clickable', function (e) {
    var $this = $(this);
    if ($this.hasClass('collapsed')) {
        // $this.parents('.panel').find('.panel-body').slideUp();
        // $this.addClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
        // $this.parents('.panel').find('.panel-body').slideDown();
        // $this.removeClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});


</script>

</head>
<body>
  <?php require_once "./includes/header.php"; ?>

  <div class="container-fluid">
  	   
        
  <div class="w3-padding-32 w3-padding-jumbo pane" role="tablist" aria-multiselectable="true" id="accordion">
      
      <div class="w3-panel w3-blue w3-round w3-padding-8 w3-large w3-hover-shadow clickable" type="button" data-toggle="collapse" data-target="#collapseExample1" data-parent="#accordion" style="cursor: pointer;">
        Button with data-target
        <span class="w3-right"><i class="glyphicon glyphicon-minus"></i></span>
      </div>

      <div class="collapse in" id="collapseExample1">
        <div class="w3-card-4 w3-padding w3-round ui piled segment" style="width: 94%;margin-left: 3%">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.<br><br>

          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.<br><br>

          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.<br><br>
        </div>
      </div>

      <div class="w3-panel w3-blue w3-round w3-padding-8 w3-large w3-hover-shadow clickable" type="button" data-toggle="collapse" data-target="#collapseExample2" data-parent="#accordion" style="cursor: pointer;">
        Button with data-target
        <span class="w3-right"><i class="glyphicon glyphicon-plus"></i></span>
      </div>
      
      <div class="collapse" id="collapseExample2" >
        <div class="w3-card-4 w3-padding w3-round ui piled segment" style="width: 94%;margin-left: 3%">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
        </div>
      </div>  

      <div class="w3-panel w3-blue w3-round w3-padding-8 w3-large w3-hover-shadow clickable" type="button" data-toggle="collapse" data-target="#collapseExample3" data-parent="#accordion" style="cursor: pointer;">
        Button with data-target
        <span class="w3-right"><i class="glyphicon glyphicon-plus"></i></span>
      </div>
      
      <div class="collapse" id="collapseExample3">
        <div class="w3-card-4 w3-padding w3-round ui piled segment" style="width: 94%;margin-left: 3%">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
        </div>
      </div> 

   </div>

  </div>
   
</body>

</html>