<?php
require_once '../classes/input.php';
require_once '../classes/DB.php';
session_start();
if (isset($_POST["initialize"])) {
	switch ($_POST["initialize"]) {
		case 'start':
			$_SESSION["simulation_instance"] = true;
			break;
		case 'restart':
			session_destroy();
			break;
		case 'exit':
			session_destroy();
			break;	
		default:
			
			break;
	}	
}