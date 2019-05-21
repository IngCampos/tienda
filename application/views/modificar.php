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
	img{
		width: 150px;
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
	
	$id = $_GET['id'];
	try {
		$conexion = new PDO('mysql:host=159.65.185.149 ;port=3306; dbname=cdshopco_ldstore2;','cdshopco_admi','L@_G$J8pvGq,');
		$sql = "select * from productos where id=$id";

		$statement = $conexion->prepare($sql);
		$statement->execute();
		$datos = $statement->fetch();
		$nombre = utf8_encode ($datos['nombre']);
		$id =$datos['id'];
		$descripcion= utf8_encode($datos['descripcion']);
		$precio= $datos['precio'];
		$img= utf8_encode ($datos['imagen']);
		$categoria = $datos['Categorias_id'];
	} catch (PDOException $e) {
		echo 'error' . $e;
	}

	 ?>
	<?php
	
 	?>
<div id="content">
	<h2>Modificar artículo</h2>
	<form action="http://www.cdshop.com.mx/principal/modificar_exito?id=<?php echo $id?>" method="POST" name="modificar_producto">
	<input type="text" name="nombre" ID='nombre' value="<?php echo $nombre?>" placeholder="Nombre del artículo">
	<input type="text" name="precio" id='precio' value="<?php echo $precio?>" placeholder="Precio">
	<textarea name="descripcion" placeholder="Descripción"><?php echo $descripcion?></textarea>
	<br>
	<label for="categoria"> Categoría</label>
	<select id="categoria" value="<?php echo $categoria?>" name="categoria">
		<option value="1">CD</option>
		<option value="3">BLURAY</option>
		<option value="2">DVD</option>
		<option value="4">VINIL</option>
	</select>
	<p>Imagen: </p>
	<img name="imagen_antigua" src="<?php echo base_url(); ?>images/<?php echo $img; ?>">
	<input type="file" value='<?php echo $img?>' name="imagen_nueva" id='imagen'>
	<button type="submit" name="boton_submit" class="btn">Guardar</button>
	</form>
</div>