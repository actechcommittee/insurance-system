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
  <link rel="stylesheet" type="text/css" href="./assets/Semantic-UI-master/dist/semantic.min.css">
  <link rel="stylesheet" type="text/css" href="./assets/css/w3.css">

  <script src="./assets/js/jquery-2.1.4.min.js"></script>
  <script src="./assets/Semantic-UI-master/dist/semantic.min.js"></script>

  <script>
  
  </script>

</head>
<body>
	<?php require_once "./includes/header.php"; ?>

</body>

</html>