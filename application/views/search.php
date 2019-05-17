
<div id="content">
	<h2 align="center">BÚSQUEDA</h2>
		<div id="productos">
		<?php foreach($productos as $p): ?>
		<div class="item item col-4 col-md-3 col-lg-3 col-xl-2">
			<h4><?php echo $p->nombre; ?></h4>
			<div class="datos">
				<img src="<?php echo base_url(); ?>images/<?php echo $p->imagen; ?>" width="100%" height="100%" alt="">
				<!-- <p><?php echo $p->descripcion; ?> </p> -->
				<?php echo anchor("principal/detalle_producto/{$p->id}", 'Ver detalle',
				array('title' => 'Ver detalle del jersey', 'class' => 'boton1')); ?>
			</div>
		</div>
		<?php endforeach; ?>
	</div>
</div>