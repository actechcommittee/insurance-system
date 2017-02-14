<?php 

	require_once 'core/init.php';


	$companies = DB::getInstance()->get('companies', array())->results();


?>


<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
    <!-- Demo -->
 	<h2>Insurance Companies In Ghana</h2>
 	<ul>
 	<?php foreach($companies as $company):?>
 		<li><?php echo $company->name; ?></li>
 	<?php endforeach;?>
    </ul>
</body>
</html>