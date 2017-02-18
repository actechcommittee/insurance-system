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

  <style type="text/css">
  .activeItem.item.w3-hover-shadow{
      background-color: #880000!important;
      color:white!important;
    }

    .activeItem.item.w3-hover-shadow:hover{
          background-color: #880000!important;
          color:white!important;
        } 
  </style>

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
  	   
  <div class="row">
  <div class="col-md-7 col-lg-7 col-md-offset-1 col-lg-offset-1">      
  <div class="w3-padding-32 pane" role="tablist" aria-multiselectable="true" id="accordion">
      
      <div class="w3-panel w3-padding-8 w3-text-white clickable" type="button" data-toggle="collapse" data-target="#collapseExample1" data-parent="#accordion" style="cursor: pointer;background-color: #880000;">
        About Actuarial Science
        <span class="w3-right"><i class="glyphicon glyphicon-plus"></i></span>
      </div>

      <div class="collapse" id="collapseExample1">
        <div class="w3-card-4 w3-padding ui piled segment w3-text-white" style="width: 94%;margin-left: 3%;line-height: 30px;background-color: #880000;">
          If you are interested in economics and business and you are highly skilled in maths and statistics, the actuarial profession could be ideal for you. Members of the actuarial profession provide risk management expertise to insurance companies, consultancies, government, regulatory bodies and a range of investment and banking institutions. The role of the actuary is to try to reduce financial uncertainty to a manageable level, and therefore improve the predictability of future financial performance. Actuarial expertise is an essential ingredient in managing the solvency of insurance companies and pension schemes globally. Actuaries use probability theory, statistical analysis and financial mathematics to understand the past and to help predict future financial scenarios.

        </div>
      </div>

      <div class="w3-panel w3-padding-8 w3-text-white clickable" type="button" data-toggle="collapse" data-target="#collapseExample2" data-parent="#accordion" style="cursor: pointer;background-color: #880000;">
        About Actuarial Science
        <span class="w3-right"><i class="glyphicon glyphicon-plus"></i></span>
      </div>

      <div class="collapse" id="collapseExample2">
        <div class="w3-card-4 w3-padding ui piled segment w3-text-white" style="width: 94%;margin-left: 3%;line-height: 30px;background-color: #880000;">
          If you are interested in economics and business and you are highly skilled in maths and statistics, the actuarial profession could be ideal for you. Members of the actuarial profession provide risk management expertise to insurance companies, consultancies, government, regulatory bodies and a range of investment and banking institutions. The role of the actuary is to try to reduce financial uncertainty to a manageable level, and therefore improve the predictability of future financial performance. Actuarial expertise is an essential ingredient in managing the solvency of insurance companies and pension schemes globally. Actuaries use probability theory, statistical analysis and financial mathematics to understand the past and to help predict future financial scenarios.

        </div>
      </div>

      <div class="w3-panel w3-padding-8 w3-text-white clickable" type="button" data-toggle="collapse" data-target="#collapseExample3" data-parent="#accordion" style="cursor: pointer;background-color: #880000;">
        About Actuarial Science
        <span class="w3-right"><i class="glyphicon glyphicon-plus"></i></span>
      </div>

      <div class="collapse" id="collapseExample3">
        <div class="w3-card-4 w3-padding ui piled segment w3-text-white" style="width: 94%;margin-left: 3%;line-height: 30px;background-color: #880000;">
          If you are interested in economics and business and you are highly skilled in maths and statistics, the actuarial profession could be ideal for you. Members of the actuarial profession provide risk management expertise to insurance companies, consultancies, government, regulatory bodies and a range of investment and banking institutions. The role of the actuary is to try to reduce financial uncertainty to a manageable level, and therefore improve the predictability of future financial performance. Actuarial expertise is an essential ingredient in managing the solvency of insurance companies and pension schemes globally. Actuaries use probability theory, statistical analysis and financial mathematics to understand the past and to help predict future financial scenarios.

        </div>
      </div>
   </div>

  </div>
  </div>
  </div>
   
</body>

</html>