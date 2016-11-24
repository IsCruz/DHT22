<?php
	require_once('connection.php');
	require_once('exceptions.php');
	
	class Registros extends Connection
	{
		private $id;
		private $temperatura;
		private $fecha;
		private $humedad;
		
		
		// id - temperatura - fecha - humedad
		public function get_id() { return $this->id; }
		public function set_id($value) { $this->id = $value; }
		public function get_temperatura() { return $this->temperatura; }
		public function set_temperatura($value) { $this->temperatura = $value; }
		public function get_fecha() { return $this->fecha; }
		public function set_fecha($value) { $this->fecha = $value; }
		public function get_humedad() { return $this->humedad; }
		public function set_humedad($value) { $this->humedad = $value; }

		//constructor
		
		function __construct()
		{
			if(func_num_args() == 0 )
			{
				$this-> id = 0;
				$this->temperatura = 0;
				$this-> fecha = date("Y-m-d H:i:s");
				$this->humedad = 0;
			}
			
			if ( func_num_args() == 1 )
			{
				$args = func_get_args();
				$id = $args[0];
				
				parent::open_connection();
				
				$query = "select id, medicion_temperatura, fecha, humedad from temperatura where id = ?";
				
				
				$command = parent::$connection->prepare($query);
				$command->bind_param('i', $id);
				$command->execute();
				$command->bind_result($this->id, $this->temperatura, $this->fecha, $this->humedad);
			
				$found = $command->fetch();
				mysqli_stmt_close($command);
				parent::close_connection();
				if(!$found)throw(new RecordNotFoundException());
			}
		}
		
			
		}
	
?>