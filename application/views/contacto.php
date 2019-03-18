<style type="text/css">
	textarea .quejas {
		resize: none;
		resize: vertical;
	}
	input .quejas,button .quejas{
		display: block;
	}
	.btn .quejas{
		padding: 10px;
		background-color: black;
		color: white;
		border-radius: 15px;
		border: none;
		margin-top: 20px;
		margin-left: 100px;
	}
	#content .quejas{
		margin-left: 50px;
		margin-top: 10px;
	}
</style>
<?php 
	if ($_SERVER['REQUEST_METHOD']=='POST') {
		$titulo = $_POST['titulo_queja'];
		$descripcion = $_POST['descripcion_queja'];
		$usuario = $this->session->userdata("usuario");
		try {
			$conexion = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore2;','root','');
			if($usuario){
				$sql = "INSERT INTO quejas_sugerencias ( usuario, apellidos, correo, titulo, descripcion) 
				VALUES ( '$usuario->nombre', '$usuario->apellidos', '$usuario->correo', 'malos precios', ' $descripcion')";
			}
			else{
				$sql = "INSERT INTO quejas_sugerencias (titulo, descripcion) 
				VALUES ('$titulo', ' $descripcion')";	
			}
			$statement = $conexion->prepare($sql);
			$statement->execute();
		} catch (PDOException $e) {
			echo 'error' . $e;
			}
		}
 ?>
<div id="content" class="row">
	<div id="map" style="width:100%; height: 340px;">"
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3701.267539946326!2d-102.29183358580349!3d21.924263961981293!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8429ee66c314de7d%3A0xdff547d2b8c845ce!2sCentro+Comercial+Altaria!5e0!3m2!1ses!2smx!4v1510347557343" style="width:100%; height:100%;" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
<div style="text-align: center;" class="col-6">
	<br>
	<p>Encuentranos en:</p>
	<p>CC. Altaria local #28</p>
	<p>Aguascalientes, Ags</p>
	<p>Telefono: (449)1-23-45-67</p>
	<a href="https://www.facebook.com/CD-Shop-709519529440742/"><img src="<?php echo base_url(); ?>/images/face.png" " width="50px"></a> 
</div>
<div class="quejas col-6">
<h2>Quejas y sugerencias</h2>
	<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
	<br>
	<input type="text" name="titulo_queja" id='precio' placeholder="Titulo">
	<br>
	<textarea name="descripcion_queja" placeholder="Descripción"></textarea>
	<br>
	<button type="submit" class="btn">Enviar</button>
	</form>
	</div>
</div>