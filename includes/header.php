<?php 
function activeItem($page){
	$ser = $_SERVER["SCRIPT_NAME"];

	if ($page == $ser) {
		# code.../insurance-system/index.php
		return "w3-red";
	}
}

function clogo(){
	$ser = $_SERVER["SCRIPT_NAME"];
	$img = "light-bulb.png";

	if ('/insurance-system/product.php' == $ser) {
		return "<img class=\"ui medium circular image img-responsive w3-hover-shadow w3-right\" src=\"assets/images/logos/$img\" style=\"width: 100px;height: 100px\">";
	}	
}
?>

<div class="w3-row-padding w3-padding-24">
<div class="w3-col m4 l3">
	<img class="ui medium circular image img-responsive w3-hover-shadow" src="assets/images/ghana.png" style="width: 100px;height: 100px">
</div>	
	<div class="w3-jumbo w3-opacity w3-text-shadow w3-col m4 l6">Insurance System</div>
<div class="w3-col m4 l3">
<?php echo clogo(); ?>
	
</div>	
</div>
<div class="">
<div class="ui stackable six item menu" style="">
	  <a class="<?php echo activeItem('/insurance-system/index.php'); ?> item w3-hover-red w3-hover-shadow" href="index.php">Home</a>
	  <a class="<?php echo activeItem('/insurance-system/product.php'); ?> item w3-hover-red w3-hover-shadow" href="product.php">Insurance Products</a>
	  <a class="<?php echo activeItem('/insurance-system/simulator.php'); ?> item w3-hover-red w3-hover-shadow" href="simulator.php">Insurance Simulator</a>
	  <a class="<?php echo activeItem('/insurance-system/estimator.php'); ?> item w3-hover-red w3-hover-shadow" href="estimator.php">Insurance Value Estimator</a>
	  <a class="<?php echo activeItem('/insurance-system/compare.php'); ?> item w3-hover-red w3-hover-shadow" href="compare.php">Compare Products</a>
	  <!-- <div class="right menu"> -->
	    <div class="item">
	      <div class="ui icon input">
	        <input type="text" placeholder="Search...">
	        <i class="search link icon"></i>
	      </div>
	    </div>
	  <!-- </div> -->
</div>
</div>
