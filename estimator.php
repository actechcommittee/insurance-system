
<?php 

 

  require_once 'core/init.php';


  $db= DB::getInstance();
 


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
  <link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/style.css">

  <script src="./assets/js/jquery-2.1.4.min.js"></script>
  <script src="./assets/js/bootstrap.min.js"></script>
  <script src="./assets/Semantic-UI-master/dist/semantic.min.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
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



<body style="background: url('./assets/images/bg.jpg') no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;">
  <?php require_once "./includes/header.php"; ?>

  <div class="container-fluid">



       
  <div class="row">
  <div class="col-md-7 col-lg-7 col-md-offset-1 col-lg-offset-1">      
  <div class="w3-padding-32 pane" role="tablist" aria-multiselectable="true" id="accordion">


  <?php

         function connect()
          {
            $dsn = "mysql:dbname=insurance";
            $username = "root";
            $password = '';
            $pdo = new PDO($dsn,$username,$password);
            return $pdo;
          }


        if(connect())
        {
          $conn = connect();
          $sql = "SELECT * FROM product ORDER BY category";
          $result = $conn->prepare($sql);
          $result->execute();
          $count=1;
          while($row = $result->fetch())
          {
 //print_array($row);
           ?>
              <div class="w3-panel w3-padding-8 w3-text-white clickable" type="button" data-toggle="collapse" 
              data-target="#collapseExample<?php echo $count; ?>" data-parent="#accordion" style="cursor: pointer;background-color: #880000;"> 
                   <?php echo $row['category']; ?>
              <span class="w3-right"><i class="glyphicon glyphicon-plus"></i></span>
            </div>

             <div class="collapse" id="collapseExample<?php echo $count; ?>">
               <div class="w3-card-4 w3-padding ui piled segment w3-text-white" style="width: 94%;margin-left: 3%;line-height: 30px;background-color: #880000;">

                      <?php
                              $info = $row['information'] ;
                              $i=0;
                              echo "<ul>";
                              while($i < count(explode('|',$info)))
                              {
                                echo "<li>".explode('|',$info)[$i]."</li>";
                                 $i++;
                              }
                              echo "</ul>";
                              
                       ?>

              </div>
            </div>

           <?php
           $count++;

          }
        }
        
        ?>
      
      

  </div>
  </div>
  </div>
   
</body>

</html>