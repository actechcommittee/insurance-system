<?php
require_once '../classes/input.php';
require_once '../classes/DB.php';

function get_products(){
  if (!(isset($_GET["di"]))) {
    $products = DB::getInstance()->get('products', array('company_id', '=', Input::get('id')))->results();
    return $products;
  }else if(isset($_GET["di"])){
  	$products = DB::getInstance()->get('products', array('id', '=', Input::get('di')))->firstRow();
    return $products;
  }else{
  	return array();
  }
}
   
function display_products($arr){

	if (isset($_GET["di"])) {
		echo "<div class=\"w3-row w3-padding-64 w3-animate-right\" style=\"text-align:center\">";
		echo"<div class=\"w3-col m3 l2 w3-container\">
				    <img class=\"img-responsive w3-circle w3-card w3-hover-shadow\" src=\"assets/images/pro/".$arr->img."\" style=\"width:150px;height:140px;cursor:pointer\" onclick=\"Assistant('".$arr->id."')\">
				    
				</div>";
				echo "<div class=\"w3-col m8 l9 w3-container w3-padding\"><h1 style=\"margin-bottom:15px\">".ucwords($arr->name)."</h1>";
			echo $arr->description;
		echo "</div>";
		echo "</div>";
	}else{
		echo "<div class=\"w3-row-padding w3-margin-top w3-animate-zoom\">";
		foreach ($arr as $ar){
			echo"<div class=\"w3-col m3 l3\">
				    <img class=\"img-responsive w3-circle w3-card w3-hover-shadow\" src=\"assets/images/pro/".$ar->img."\" style=\"width:100px;height:100px;cursor:pointer;margin-left:45px\" onclick=\"Assistant('".$ar->id."')\">
				    <div class=\"w3-container w3-padding-24\">
				      <h4>".ucwords($ar->name)."</h4>
				    </div>
				    
				</div>";
		}
		echo "</div>";
	}
}

display_products(get_products());
?>