<?php 
function activeItem($page){
	$ser = $_SERVER["SCRIPT_NAME"];

	if ($page == $ser) {
		# code.../insurance-system/index.php
		return "w3-sand";
	}
}

function clogo(){
	$ser = $_SERVER["SCRIPT_NAME"];
	$img = "light-bulb.png";

	if ('/insurance-system/product.php' == $ser) {
		return "";
	}elseif ('/insurance-system/compare.php' == $ser) {
		echo "
	    <div class=\"item\" style=\"padding-top:10px;width:50px;height:50px\">

	      <div class=\"ui icon input\">
	      <form id=\"productid\" style=\"display: inline;\">
	      <div class=\"ui-widget search\">	
	      <div class=\"w3-col l10 m9 s9 search1\" >      
	        <input type=\"text\" placeholder=\"Search...\" id=\"input\" name=\"product\">
	      </div>  
	      <div class=\"w3-col l2 m2 s3 search2\" >
	        <a class=\"w3-btn w3-white\"  onclick=\"getData('#productid')\"><i class=\"search icon\"></i></a>
	        </div>
	      </div>  
	        </form>
	      </div>
	      
	    </div>";
	}	
}

//define colours
$bg = array("w3-hover-orange","w3-hover-red","w3-hover-cyan","w3-hover-lime","w3-hover-deep-orange","w3-hover-blue","w3-hover-indigo","w3-hover-purple","w3-hover-yellow","w3-hover-green","w3-hover-aqua","w3-hover-sand","w3-hover-pink","w3-hover-amber","w3-hover-blue-grey","w3-hover-light-green","w3-hover-light-blue","w3-hover-light-grey","w3-hover-deep-purple","w3-hover-dark-grey","w3-hover-black","w3-hover-pale-red","w3-hover-pale-yellow","w3-hover-pale-green","w3-hover-pale-blue");
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div class="w3-padding-large">
	<div class="ui stackable two item menu w3-text-shadow myHeader">
		<div class="w3-col m4 l3 w3-padding-8">
			<img class="ui medium circular image img-responsive" src="assets/images/MUS.png" style="width: 75px;height: 80px;left:20px">
		</div>
		<div class="w3-jumbo w3-text-shadow w3-col m4 l6" style="margin-top: 16px"><span class="name">Insurance System</span></div>
		<div class="w3-col m4 l3" id="clogo">
		<?php echo clogo(); ?>	
		</div>	
	</div>	
	
</div>
<div class="ui stackable five item menu" style="">
	  <a class="<?php echo activeItem('/insurance-system/index.php'); ?> item  w3-hover-shadow" href="index.php">Home</a>
	  <a class="<?php echo activeItem('/insurance-system/product.php'); ?> item  w3-hover-shadow" href="product.php">Insurance Products</a>
	  <a class="<?php echo activeItem('/insurance-system/compare.php'); ?> item  w3-hover-shadow" href="compare.php">Compare Products</a>	  
	  <a class="<?php echo activeItem('/insurance-system/simulator.php'); ?> item  w3-hover-shadow" href="simulator.php">Insurance Simulator</a>
	  <a class="<?php echo activeItem('/insurance-system/estimator.php'); ?> item w3-hover-shadow" href="estimator.php">Insurance Value Estimator</a>
	 
</div>

</body>
</html>
