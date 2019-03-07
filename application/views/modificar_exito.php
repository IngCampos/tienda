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
	<h2>Modificación exitosa</h2>
	<?php 

	$id = $_GET['id'];
	try {
		
	} catch (PDOException $e) {
		echo 'error' . $e;
	}

	if ($_SERVER['REQUEST_METHOD']=='POST') {
	try {
			$idv = $_GET['id'];
			$conexion = new PDO('mysql:host=localhost; dbname=ldstore2;','root','');
			$sql = "select * from productos where id=$idv";

			$statement = $conexion->prepare($sql);
			$statement->execute();
			$datos = $statement->fetch();

			$img= $datos['imagen'];

			$idv = $_GET['id'];
			$nombrev = $_POST['nombre'];
			$descripcionv= $_POST['descripcion'];
			$preciov= $_POST['precio'];
			

			if(isset($_POST['imagen_nueva']))
			{
			$imgv= $_POST['imagen_nueva'];
			}
			else
			{
				echo "imagen antigua : $img";
				$imgv = $img;
			}

			$categoriav = $_POST['categoria'];

			$conexion = new PDO('mysql:host=localhost; dbname=ldstore2;','root','');
			$sql = "update productos set nombre = '$nombrev',descripcion = '$descripcionv',precio = $preciov, imagen = '$imgv', Categorias_id = $categoriav where id = $idv ";
			
			$statement = $conexion->prepare($sql);
			$statement->execute();
		} catch (PDOException $e) {
			echo 'error' . $e;
		}
	 }

 ?>
</div>