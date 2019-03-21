<?php 
$conexion2 = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore2;','root','');
$statement2 = $conexion2->prepare("SELECT * FROM quejas_sugerencias");
$statement2->execute();
$quejasSugerencias = $statement2->fetchAll();
if (isset($_POST['eliminar'])){
		$conexion = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore2;','root','');
		$sql = "DElETE * FROM quejas_sugerencias";
		$statement = $conexion->prepare($sql);
		$statement->execute();
}
?>
<h1>Buzon de quejas y sugerencias</h1>
<?php foreach($quejasSugerencias as $qs): ?>
<?php echo "<h4> Id_Queja " . $qs['id'].": "; if($qs['usuario']!=""){
    echo $qs['usuario']." "; echo $qs['apellidos']."("; echo $qs['correo'].")";} echo "</h4>"?>
<?php echo $qs['titulo'].": "; echo $qs['descripcion']; ?>
<?php endforeach; ?><br>