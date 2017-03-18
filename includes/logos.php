<?php
require_once '../classes/input.php';
require_once '../classes/DB.php';

function logo(){
  if (isset($_GET["id"])) {
   $products = DB::getInstance()->get('companies', array('c_id', '=', Input::get('id')))->firstRow();
   
   echo "<img class=\"ui medium circular image img-responsive w3-right w3-animate-opacity\" src=\"assets/images/logos/".$products->logo."\" style=\"width: 50px;height: 50px; margin-right:20px;margin-top:18px\">";    
  }
}

logo();

?>