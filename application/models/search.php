<div id="content">
	<h2 align="center">CATÁLOGO DE PRODUCTOS</h2>
	<ul id="menu_catalogo">
		<li><?php echo anchor("principal/search", $_GET['search']); ?></li>
		<?php foreach($categorias as $cat): ?>
			<li><?php echo anchor("principal/search/".$_GET['search']); ?></li>
		<?php endforeach; ?>
	</ul>
	<div id="productos">
		<?php foreach($productosb as $p): ?>
		<div class="item">
			<h3><?php echo $p->nombre; ?></h3>
			<div class="datos">
				<img src="<?php echo base_url(); ?>images/<?php echo $p->imagen; ?>" width="100" height="100" alt="">
				<p><?php echo $p->descripcion; ?> </p>
				<?php echo anchor("principal/detalle_producto/{$p->id}", 'Ver detalle',
				array('title' => 'Ver detalle del jersey', 'class' => 'boton1')); ?>
			</div>
		</div>
		<?php endforeach; ?>
	</div>
</div>