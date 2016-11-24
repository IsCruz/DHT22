<?php

header('Access-Control-Allow-Origin: *');

require_once('classes/catalogs.php');
require_once('classes/registros.php');
require_once('classes/exceptions.php');


$json = '{ "status" : 0, "registros" : [';
$first = true;
	foreach(Catalogs::get_registros() as $r)
	{
		if($first) $first = false; else $json .= ',';
		$json .= '{
			"id" : "'.$r->get_id().'",
			"temperatura" : "'.$r->get_temperatura().'",
			"fecha" : "'.$r->get_fecha().'"
		}';
	}
	
$json.= '] }';
	echo $json;
	
?>