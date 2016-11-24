<?php
require_once('exceptions.php');
require_once('connection.php');
require_once('registros.php');

class Catalogs extends Connection
{
	
	public static function get_registros()
	{
		parent::open_connection();
		$ids = array();
		$list = array();
		
		$query ="select id, medicion_temperatura, fecha, humedad from temperatura";
		
		$command = parent::$connection->prepare($query);
		$command->execute();
		$command->bind_result($id,$temperatura,$fecha,$humedad);
		while ($command->fetch()) array_push($ids, $id);
		mysqli_stmt_close($command);
		parent::close_connection();
		
		for($i=0; $i < count($ids); $i++) array_push($list, new Registros($ids[$i]));
		return $list;
		
	}
}



?>