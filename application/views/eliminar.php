<style type="text/css">
	textarea{
		resize: none;
		resize: vertical;
	}
	input,button{
		display: block;
	}
	.btn{
		padding: 10px;
		background-color: black;
		color: white;
		border-radius: 15px;
		border: none;
		margin-top: 20px;
		margin-left: 400px;
	}
	#content{
		margin-left: 150px;
		margin-top: 150px;
	}
	textarea{
		width: 450px;
		height: 50px;
	}
	select{
		display: inline-block;
	}
	input[type="file"]{
		width: 400px;
		color: black;
	}
</style>

<div id="content">
	<h2>Eliminar artículo</h2>

	<?php 
	$id = $_GET['id'];
	try {
		$conexion = new PDO('mysql:host=159.65.185.149 ;port=3306; dbname=cdshopco_ldstore2;','cdshopco_admi','L@_G$J8pvGq,');
		$sql = "select * from productos where id=$id";
		$statement = $conexion->prepare($sql);
		$statement->execute();
		$datos = $statement->fetch();
		echo 'Producto: '.$datos['nombre'] .' Eliminado';
	} catch (PDOException $e) {
		echo 'error' . $e;
	}

	 ?>
	<?php 
	
	try {
		$conexion = new PDO('mysql:host=159.65.185.149 ;port=3306; dbname=cdshopco_ldstore2;','cdshopco_admi','L@_G$J8pvGq,');
		$sql = "delete from productos where id=$id";
		$statement = $conexion->prepare($sql);
		$statement->execute();
	} catch (PDOException $e) {
		echo 'error' . $e;
	}

 ?>
</div>