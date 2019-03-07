<div id="content" align="center">
	
	<h2>CARRITO DE COMPRAS</h2>
	<p>Mostramos los contenidos del carrito:</p>

	<table class="tabla1">
		<tr>
			<th>#</th><th>Imagen</th><th>Producto</th><th>Precio</th><th>Piezas</th><th>Subtotal</th><th></th>
		</tr>
		<?php $i=1; foreach($items as $item): ?>
			<tr>
				<td><?php echo $i++; ?></td>
				<td><img src="<?php echo base_url() . "images/" . $item["imagen"];?>" width="30"></td>
				<td><?php echo $item["nombre"]; ?></td>
				<td>$ <?php echo number_format($item["precio"], 2); ?></td>
				<td>
					<input type="number" id="update_cantidad_<?php echo $item["id_producto"]; ?>"  
					value="<?php echo $item["cantidad"]; ?>" min="1" max="100">
					<?php echo anchor('#', img(base_url() .'images/update.png'), 
					array('class' => 'actualizar_item', 'data-idprod' => $item["id_producto"])); ?>
				</td>
				<td>$ <?php echo number_format(($item["precio"] * $item["cantidad"]), 2); ?></td>
				<td><?php echo anchor('principal/delete/' . $item["id_producto"], img(base_url() .'images/del.png'), 
				'title="Quitar item" '); ?></td>
			</tr>
		<?php endforeach; ?>
		<tr>
			<td colspan="7" align="right"><strong>Total: $ <?php echo number_format($total,2); ?></strong></td>
		</tr>
	</table>
	<p align="center">
		<?php echo anchor('principal/catalogo', '<< Continuar comprando', 'title="Regresar al Catalogo"'); ?>
		<?php echo anchor('principal/detalle_pedido', 'Completar pedido >>', 'title="Completar el pedido"'); ?>
	</p>
</div>
