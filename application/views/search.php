
<div id="content">
	<h2 align="center">BÚSQUEDA</h2>
	<ul id="menu_catalogo">
		<li><?php echo anchor("principal/catalogo", "Todos"); ?></li>
		<?php foreach($categorias as $cat): ?>
			<li><?php echo anchor("principal/catalogo/" . $cat->id, $cat->nombre); ?></li>
		<?php endforeach; ?>
	</ul>
		<div id="productos">
		<?php foreach($productos as $p): ?>
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