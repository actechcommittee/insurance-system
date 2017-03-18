<?php
require_once '../classes/input.php';
require_once '../classes/DB.php';
session_start();
if (isset($_POST["initialize"])) {
	switch ($_POST["initialize"]) {
		case 'start':
			$_SESSION["simulation_instance"] = true;
			$_SESSION["simulation_stage"] = "Asset Selection";
			$_SESSION["initial_amount"] = 10000;
			$_SESSION["username"] = "Actec Boss";//default
	    	$_SESSION["gender"] = "male"; //default
			break;
		case 'restart':
			session_destroy();
			break;
		case 'policies':
			$_SESSION["simulation_stage"] = "Policy Selection";
			break;
		case 'exit':
			session_destroy();
			break;	
		default:
			
			break;
	}	
}

if(isset($_GET['assetId']))
{
	$policies = DB::getInstance()->get('simulator_policies', array('asset_id', '=',$_GET['assetId']))->results();


	// print_r($policies);
	foreach ($policies as $poles){
		echo "
          <div id=\"leftHouseTwo\" class=\"leftHouseImage House\" data-toggle=\"popover\" title=\"<h3>".$poles->p_name."</h3>\" data-content=\"".$poles->descriptions."\"><img data-poleid=\"".$poles->p_id."\" data-poleidAsset=\"".$poles->asset_id."\" class=\"Policy w3-card w3-border-blue\" src=\"assets/images/simulator/policies/".$poles->pimg."\" style=\"width:100%; height:100%;\"></div>";
         }
}

if (isset($_POST["theorder"])&&isset($_POST["theorderOne"])) {
	$_SESSION["theorder"] = $_POST["theorder"];
	$_SESSION["theorderOne"] = $_POST["theorderOne"];
	$_SESSION["blackListed"] = array();
}

// Insurance Policy Purchase Text

if (isset($_POST["housepole"])&&isset($_POST["houseasset"])&&isset($_POST["hname"])) {
	$poly = DB::getInstance()->get('simulator_policies', array('p_id', '=',$_POST["housepole"]))->firstRow();

	echo "<div class=\"w3-container\"><div class=\"w3-section w3-large w3-center\"> Policy Purchase</div>
		<div class=\"w3-section\"><p>Usually when purchasing a policy, the insurance company considers <br> a lot of factors in order to be able to calculate a price (known as premium).<br> The value of this price however depends on the type of policy you are buying and and the factors peculiar to you.<br> It is therefore very unsual to see two different people paying the same price for a particular insurance policy. <br> For Instance, you would agree with me that a drunkard insuring their car against accident would naturally pay more money than a known sober person going in for the same policy on their car.<br><br>However, the value of of the ".strip_tags($_POST["hname"])." Policy for the purpose of this simulation is <span class=\"w3-text-shadow w3-opacity w3-xlarge w3-text-deep-orange w3-hover-text-lime\"> GH&cent; ".$poly->pprices."</span>.</p></div><div class=\"w3-right\"><button class=\"btn btn-danger\" style=\"webkit-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);-moz-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);\" onclick=\"alert('): awww so you don\'t want to buy me ):')\">Don't Click to Buy Me</button> 
			<button class=\"btn btn-primary\" style=\"webkit-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);-moz-box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.3);\" onclick=\"seriousPolicyEventAnimation('".strip_tags($_POST["hname"])."','".strip_tags($_POST["housepole"])."','".strip_tags($_POST["houseasset"])."','".$poly->pprices."')\"> Clcik to Buy Me</button></div></div>";
}

if(isset($_POST['username'])&&isset($_POST['gender'])) {
	    $_SESSION["username"] = $_POST['username'];
	    $_SESSION["gender"] = $_POST['gender'];
}

if(isset($_POST['newAmount'])) {
	$_SESSION["initial_amount"] = $_POST['newAmount'];
}

if(isset($_POST['newBlack'])) {
	$_SESSION["blackListed"][] = $_POST['newBlack'];
}


