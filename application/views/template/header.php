<header>
	<h1><?php echo anchor('principal', 'CD Shop', 'title="Ir al inicio"'); ?></h1>
	<div id="widget_carrito">
		<p style="line-height: -0em;"><img src="<?php echo base_url(); ?>/images/cart1.png" width="55px" height="55px" alt="Carrito"></p>
		<p style="line-height: -0em;"><strong>Total: $ </strong><?php echo number_format($total['total'], 2); ?></p>
		<?php echo anchor('principal/carrito', 'Ver carrito'); ?>
	</div>
</header>