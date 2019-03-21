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
<?php 
	if ($_SERVER['REQUEST_METHOD']=='POST') {
		$nombre = $_POST['nombre'];
		$descripcion = $_POST['descripcion'];
		$precio = $_POST['precio'];
		$categoria = $_POST['categoria'];
		$img = $_POST['imagen'];
		

		$archivo_subido = '../../images/' . $img;

		move_uploaded_file($img, $archivo_subido);

		try {
			$conexion = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore2;','root','');

			$sql = "INSERT INTO productos (nombre, descripcion, precio, imagen, Categorias_id) 
				VALUES ('$nombre', '$descripcion', $precio, '$img', $categoria)";
			$statement = $conexion->prepare($sql);
			$statement->execute();
		
		} catch (PDOException $e) {
			echo 'error' . $e;
		}

		}
 ?>
<div id="content">
	<h2>Agregar artículo</h2>
	<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST" name="nuevo_producto">
	<input type="text" name="nombre" ID='nombre' placeholder="Nombre del artículo">
	<input type="text" name="precio" id='precio' placeholder="Precio">
	<textarea name="descripcion" placeholder="Descripción"></textarea>
	<br>
	<label for="categoria"> Categoría</label>
	<select id="categoria" name="categoria">
		<option value="1">CD</option>
		<option value="3">BLURAY</option>
		<option value="2">DVD</option>
		<option value="4">VINIL</option>
	</select>
	<input type="file" name="imagen" id='imagen'>
	<button type="submit" class="btn">Crear</button>
	</form>
</div>