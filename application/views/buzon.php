<?php 
$usuario = $this->session->userdata("usuario");//obtencion del usuario
if($usuario->usuario!="admin1"){//validacion de que sea el usuario admin1
        header('Location: '.base_url());
        //en caso de no serlo se manda al login, sin poder acceder a la pagina
    }
?>
<?php 
if(isset($_GET["id_delete"])){// en caso de que se elimine una registro, aqui se recibo por get
	$conexion2 = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore2;','root','');
	$statement2 = $conexion2->prepare("DELETE FROM buzon where id_buzon='".$_GET["id_delete"]."'");
	$statement2->execute();	
}
$conexion2 = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore2;','root','');
$statement2 = $conexion2->prepare("SELECT clientes.usuario,clientes.correo,clientes.usuario, buzon.id_buzon,buzon.Titulo,buzon.Descripcion,buzon.Fecha FROM buzon INNER JOIN clientes ON buzon.id=clientes.id");
$statement2->execute();
$quejasSugerencias = $statement2->fetchAll();
?>
<center><h1>Buzon de quejas y sugerencias</h1></center>
<div class="row jumbotron">
<?php foreach($quejasSugerencias as $qs): ?>
<div class="card border-primary col-sm-12 col-md-6 col-lg-4 col-xl-3 card">
		<div class="card-header"><center><?php echo $qs['usuario']."(". $qs['correo'].")<br>".$qs['Fecha'];?></center></div>
        <div class="card-body text-primary">
            <h5 class="card-title"><?php echo $qs['Titulo'].": ";?></h5>
            <p class="card-text">
			<?php echo $qs['Descripcion']; ?>
            </p>
			<hr>
			<center><a class="btn btn-danger" href="<?php echo base_url()."principal/buzon?id_delete=".$qs['id_buzon']; ?>">Eliminar</a></center>
        </div>
    </div>
<?php endforeach; ?><br>
</div>
</div>