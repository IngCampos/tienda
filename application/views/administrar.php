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
	<center><h1>Agregar artículo</h1></center>
	<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST" name="nuevo_producto">
<div id="content" class="form-row jumbotron">
	<div class="form-group col-sm-12 col-md-6 col-lg-6 col-xl-4">
	<label for="nombre">Nombre del artículo</label>
	<input class="form-control" type="text" name="nombre" ID='nombre'>
	</div>
	<div class="form-group col-sm-12 col-md-6 col-lg-6 col-xl-2">
	<label for="precio">Precio</label>
	<input class="form-control" type="text" name="precio" id='precio'>
	</div>
	<div class="form-group col-sm-12 col-md-6 col-lg-6 col-xl-2">
	<label for="categoria"> Categoría</label>
	<select class="form-control" id="categoria" name="categoria">
		<option value="1">CD</option>
		<option value="3">BLURAY</option>
		<option value="2">DVD</option>
		<option value="4">VINIL</option>
	</select>
	</div>
	<div class="form-group col-sm-12 col-md-6 col-lg-6 col-xl-4">
	<label for="imagen">Imagen</label>
	<input class="form-control" type="file" name="imagen" id='imagen'>
	</div>
	<div class="form-group col-12">
	<label for="descripcion">Descripción</label>
	<textarea class="form-control" name="descripcion" id="descripcion"></textarea>
	</div>
	<div class="form-group col-12">
	<button type="submit" class="form-control btn btn-primary">Crear</button>
	</div>
</div>
	</form>