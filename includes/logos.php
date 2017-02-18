<?php
require_once '../classes/input.php';
require_once '../classes/DB.php';

function logo(){
  if (isset($_GET["id"])) {
   $products = DB::getInstance()->get('companies', array('id', '=', Input::get('id')))->firstRow();
   
   echo "<img class=\"ui medium circular image img-responsive w3-right w3-animate-opacity\" src=\"assets/images/logos/".$products->logo."\" style=\"width: 100px;height: 100px\">";    
  }
}

logo();

?>