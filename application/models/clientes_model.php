<?php
require_once("ecriptacion.php");
class Clientes_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}

   

	public function valida_usuario($datos)
	{
		$array = array("usuario" => $datos["usuario"], "password" => dkjje($datos["password"]));
		$query = $this->db->where($array)->get("clientes");

		if($query->num_rows() == 1) return $query->row();

		return FALSE;
	}


		public function select_usuario($datos)
	{
		$query = $this->db->where("clientes.id", $datos)->get("clientes");

		if($query->num_rows() == 1) return $query->row();

		return FALSE;
	}

		public function get_usuario($id=9)
	{
		$query = $this->db->where('clientes.id', $id)->get("clientes");
        if($query->num_rows() == 1) return $query->row();

		return FALSE;
	}

	public function agregar_cliente($datos)
	{
		$array = array(
			"nombre" => $datos["nombre"],
			"apellidos" => $datos["apellidos"],
			"direccion" => $datos["direccion"],
			"correo" => $datos["correo"],
			"usuario" => $datos["usuario"],
			"password" => dkjje($datos["password"]),
		);
		$insert = $this->db->insert('clientes', $array);

		if($insert){
			$array = array("usuario" => $datos["usuario"], "password" => dkjje($datos["password"]));
			$query = $this->db->where($array)->get("clientes");

			if($query->num_rows() == 1) return $query->row();
			else return FALSE;
		}
		return FALSE;
	}
	public function editar_cliente($datos)
	{
		$array = array(
			"id" => $datos["id"],
			"nombre" => $datos["nombre"],
			"apellidos" => $datos["apellidos"],
			"direccion" => $datos["direccion"],
			"correo" => $datos["correo"],
			"usuario" => $datos["usuario"],
			"password" => dkjje($datos["password"]),
		);
		$id=$array["id"];
		$update = $this->db->update('clientes', $array);

	
		return FALSE;
	}
}