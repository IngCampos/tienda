	<h1 align="center">CATÁLOGO DE PRODUCTOS</h1>
<div id="content">
	<ul id="menu_catalogo">
		<li><?php echo anchor("principal/catalogo", "Todos"); ?></li>
		<?php foreach($categorias as $cat): ?>
			<li><?php echo anchor("principal/catalogo/" . $cat->id, $cat->nombre); ?></li>
		<?php endforeach; ?>
	</ul>
	<?php 
$pagina = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;
$postPorPagina = 10;
$articulosMostrar = [];
$inicio = ($pagina > 1) ? ($pagina * $postPorPagina - $postPorPagina) : 0 ;
$totalArticulos = 0;
foreach($productos as $p){
if($totalArticulos<$postPorPagina*$pagina && $totalArticulos>=($postPorPagina*($pagina-1)))
array_push($articulosMostrar, $p);
$totalArticulos++;
}
$numeroPaginas = ceil($totalArticulos / $postPorPagina);// con ceil se redondea hacia arriba
?>
	<div id="productos">
		<?php 
		//echo print_r($productos[0]);
		foreach($articulosMostrar as $p): ?>
		<div class="item col-sm-12 col-md-4 col-lg-4 col-xl-4">
			<h3><?php echo $p->nombre; ?></h3>
			<div class="datos">
				<img src="<?php echo base_url(); ?>images/<?php echo $p->imagen; ?>" width="100" height="100" alt="">
				<p><?php echo $p->descripcion; ?> </p>
				<?php echo anchor("principal/detalle_producto/{$p->id}", 'Ver detalle',
				array('title' => 'Ver detalle', 'class' => 'boton1')); ?>
				

				<?php if($this->session->userdata("valid_user")){ ?>
				<?php $usuario = $this->session->userdata("usuario"); ?>
				<?php if($usuario->nombre=="admin1"){ ?>
				<?php echo anchor("principal/eliminar/?id={$p->id}", 'Eliminar',
				array('title' => 'Eliminar', 'class' => 'boton1')); ?>
				<?php echo anchor("principal/modificar/?id={$p->id}", 'Modificar',
				array('title' => 'Modificar', 'class' => 'boton1')); ?>
				<?php } } ?>
			</div>
		</div>
		<?php 
	endforeach; ?>
	</div>
	<center>
	<?php if($pagina == 1): ?>
				<a style='background-color:black' class="boton1">Anterior</a>
				<?php else: ?>
				<a class="boton1" href="?pagina=<?php echo $pagina - 1 ?>#menu_catalogo">Anterior</a>
				<?php endif; ?>
				<?php 
					for($i = 1; $i <= $numeroPaginas; $i++){
						if ($pagina === $i) {
							
							echo "<a style='background-color:black'  class='boton1' href='?pagina=$i#menu_catalogo'>$i</a>";
						} else {
							echo "<a class='boton1' href='?pagina=$i#menu_catalogo'>$i</a>";
						}
					}
				 ?>
	<?php if($pagina == $numeroPaginas): ?>
	<a style='background-color:black' class="boton1">Siguiente</a>
		<?php else: ?>
		<a class="boton1" href="?pagina=<?php echo $pagina + 1 ?>#menu_catalogo">Siguiente</a>
		<?php endif; ?>
</center>
</div>