<?php 
$conexion2 = new PDO('mysql:host=159.65.185.149 ;port=3306; dbname=cdshopco_ldstore2;','cdshopco_admi','L@_G$J8pvGq,');
$statement2 = $conexion2->prepare("SELECT * FROM quejas_sugerencias");
$statement2->execute();
$quejasSugerencias = $statement2->fetchAll();
if (isset($_POST['eliminar'])){
		$conexion = new PDO('mysql:host=159.65.185.149 ;port=3306; dbname=cdshopco_ldstore2;','cdshopco_admi','L@_G$J8pvGq,');
		$sql = "DElETE * FROM quejas_sugerencias";
		$statement = $conexion->prepare($sql);
		$statement->execute();
}
?>
<center><h1>Buzon de quejas y sugerencias</h1></center>
<div class="row jumbotron">
<?php foreach($quejasSugerencias as $qs): ?>
<div class="col-sm-12 col-md-6 col-lg-4 col-xl-3">
<h5> Id_Queja 
<?php " ". $qs['id'].": "; if($qs['usuario']!=""){
    echo $qs['usuario']." "; echo $qs['apellidos']."("; echo $qs['correo'].")";}?>
	</h5>
<?php echo $qs['titulo'].": "; echo $qs['descripcion']; ?>
</div>
<?php endforeach; ?><br>
</div>