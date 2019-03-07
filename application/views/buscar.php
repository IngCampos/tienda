
<div id="content">
	<h2 align="center">BÚSQUEDA DE PRODUCTOS</h2>  
	<div id="productos">
		<?php foreach($productos as $p): ?>
		<div class="item">
			<h3><?php echo $p->nombre; ?></h3>
			<div class="datos">
				<img src="<?php echo base_url(); ?>images/<?php echo $p->imagen; ?>" width="100" height="100" alt="">
				<p><?php echo $p->descripcion; ?> </p>
				<?php echo anchor("principal//{$p->nombre}", 'Ver detalle',	array('title' => 'Ver detalle del jersey', 'class' => 'boton1')); ?>
			</div>
		</div>
		<?php endforeach; ?>
	</div>
</div>