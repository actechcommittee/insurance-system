<?php
	require_once '../classes/input.php';
    require_once '../classes/DB.php';

// print_r($_GET);
    function get_products(){
	  if (isset($_GET["product"])) {
	  	
	    $product = Input::get('product');
	    $sql = "SELECT * FROM products, companies WHERE products.name = '{$product}' AND companies.c_id = products.company_id";
	    $products = DB::getInstance()->select($sql)->results();
	    return $products;
	  }else{
	  	
	  }
	}

// echo '<pre>', print_r(get_products()), '</pre>';die();

	function display_products($arr){
	if (!empty($arr)) {
		$coacoa = 1;
		foreach ($arr as $ar) {
			$str = str_word_count($ar->description,1);
			echo "<div class=\"w3-row w3-padding-24 w3-padding-large w3-section w3-card w3-margin w3-hover-shadow w3-sand\">";
			echo"<div class=\"w3-col m4 l4 w3-container\">
					<img class=\"img-responsive w3-circle w3-card w3-center\" src=\"assets/images/pro/".$ar->img."\" style=\"width:130px;height:130px\" onclick=\"Assistant('".$ar->id."')\"><div class=\"w3-padding\"><h4>".ucwords($ar->name)."</h4></div>
				</div>";
				// 
			echo "<div class=\"w3-col m8 l8 w3-container w3-padding\"><h1 style=\"margin-bottom:15px\">".ucwords($ar->c_name)."</h1>";
				echo implode(" ",array_splice($str,0,24))." <a class=\"w3-btn w3-green w3-border w3-round-jumbo\" href=\"javascript:void(0);\" onclick=\"openModal('$ar->id','modal_no_$coacoa','#modal_co_$coacoa')\">read more</a><div id=\"modal_no_$coacoa\" class=\"w3-modal w3-animate-zoom\">
  					<div class=\"w3-modal-content\">

				    <header class=\"w3-container w3-teal\">
				      <span onclick=\"closeModal('modal_no_$coacoa','#modal_co_$coacoa')\"
				      class=\"w3-closebtn\">&times;</span>
				    </header>

				    <div class=\"w3-container\" id=\"modal_co_$coacoa\">
				      
				    </div>

				    <footer class=\"w3-container w3-teal\">
				      
				    </footer>

				  </div>
				</div>";
			echo "</div>";
			echo "</div>";
			++$coacoa;
		}
		
	}else{
		echo "string";
	}
}

display_products(get_products());
?>