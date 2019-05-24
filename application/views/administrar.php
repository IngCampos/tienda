<?php 
$usuario = $this->session->userdata("usuario");//obtencion del usuario
if($usuario->usuario!="admin1"){//validacion de que sea el usuario admin1
        header('Location: '.base_url());
        //en caso de no serlo se manda al login, sin poder acceder a la pagina
    }
?>
<?php 
	if ($_SERVER['REQUEST_METHOD'] == 'POST' && !empty($_FILES)) {// $_files es un arreglo de archivos, si esta vacia significa que no envio el archivo
	// La funcion getimagesize nos retorna un arreglo de propiedades de la imagen y si no es una imagen retorna false y un error notice.
	// Podemos utilizar el @ antes de la funcion para omitir el notice si no es una imagen.
		$nombre = $_POST['nombre'];
		$descripcion = $_POST['descripcion'];
		$precio = $_POST['precio'];
		$categoria = $_POST['categoria'];
		$img = $_FILES['imagen']['name'];
		
		$check = @getimagesize($_FILES['imagen']['tmp_name']);
		if ($check !== false){// en caso de que si sea una imagen
			$carpeta_destino = $_SERVER['DOCUMENT_ROOT'].'/images/';// donde se guardara la foto
			$archivo_subido = $carpeta_destino . $_FILES['imagen']['name'];// es la ruta del directorio y el archivo
			move_uploaded_file($_FILES['imagen']['tmp_name'], $archivo_subido);// el segundo parametro es donde lo queremos mover		
			
		try {
			$conexion = new PDO('mysql:host=159.65.185.149 ;port=3306; dbname=cdshopco_ldstore2;','cdshopco_admi','L@_G$J8pvGq,');

			$sql = "INSERT INTO productos (nombre, descripcion, precio, imagen, Categorias_id) 
				VALUES ('$nombre', '$descripcion', $precio, '$img', $categoria)";
			$statement = $conexion->prepare($sql);
			$statement->execute();
		
		} catch (PDOException $e) {
			echo 'error' . $e;
		}
	}else
	echo "<script>alert('Imagen no valida o muy pesada');</script>";
		}
 ?>
	<center><h1>Agregar artículo</h1></center>
	<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST" name="nuevo_producto" enctype="multipart/form-data">
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