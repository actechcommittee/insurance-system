<?php
require_once '../classes/input.php';
require_once '../classes/DB.php';

$searchTerm = Input::get("term");

$products = DB::getInstance()->select("SELECT DISTINCT name FROM products WHERE name LIKE '%{$searchTerm}%' ORDER BY name ASC")->results();


$data = array();

foreach ($products as $product) {
	$data[] = $product->name;
}

echo json_encode($data);

?>