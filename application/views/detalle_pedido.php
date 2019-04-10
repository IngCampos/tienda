<?php
$carrito = $this->session->userdata("carrito");
$usuario = $this->session->userdata("usuario");
?>
<script type="text/javascript">
	function pagoOnChange(tipo_pago) {
      if (tipo_pago.value=="1"){
           divC = document.getElementById("num_tarjeta");
           divC.style.display = "";

           divm = document.getElementById("vence_mes");
           divm.style.display = "";

 			diva = document.getElementById("vence_ano");
           diva.style.display = "";
      }else{
      		divC = document.getElementById("num_tarjeta");
           divC.style.display = "none";

           divm = document.getElementById("vence_mes");
           divm.style.display = "none";

 			diva = document.getElementById("vence_ano");
           diva.style.display = "none";
      }
}
</script>
<div id="content" align="center">
	<h2>DETALLE DEL PEDIDO</h2>

	<div class="bloque_detalle_pedido">
		<h3>Datos del Cliente</h3>

		<table class="tabla2">
			<tr>
				<td><strong>Nombre: </strong></td>
			</tr>
			<tr>
				<td><?php echo $usuario->nombre . " " . $usuario->apellidos . " (" . $usuario->usuario . ")"; ?></td>
			</tr>
			<tr>
				<td><strong>Correo: </strong></td>
			</tr>
			<tr>
				<td><a href="mailto:<?php echo $usuario->correo; ?>"><?php echo $usuario->correo; ?></a></td>
			</tr>
			<tr>
				<td><strong>Dirección: </strong></td>
			</tr>
			<tr>
				<td><?php echo $usuario->direccion; ?></td>
			</tr>
			<tr>
				<td>
				<?php echo form_open("login/editar_cuenta"); ?>
					<input type="submit" class="btn btn-primary btn-lg" value='Actualizar datos'>
<?php echo form_close(); ?>

				</td>
			</tr>
		</table>
	</div>

	<div class="bloque_detalle_pedido">
		<h3>Datos del Pedido</h3>
		<table class="tabla2">
			<tr>
				<th>#</th><th>Producto</th><th>Precio</th><th>Piezas</th><th>Subtotal</th>
			</tr>
			<?php $i=1; foreach($carrito as $item): ?>
			<tr>
				<td><?php echo $i++; ?></td>
				<td><?php echo $item["nombre"]; ?></td>
				<td>$<?php echo number_format($item["precio"],2); ?></td>
				<td><?php echo $item["cantidad"]; ?></td>
				<td>$<?php echo number_format($item["precio"] * $item["cantidad"],2); ?></td>
			</tr>
			<?php endforeach; ?>
			<tr>
				<td colspan="5" align="right">
					<strong>Subtotal: $ <?php echo number_format($total['subtotal'],2); ?></strong>
				</td>
			</tr><tr>
				<td colspan="5" align="right">
					<strong>IVA: $ <?php echo number_format($total['iva'],2); ?></strong>
				</td>
			</tr><tr>
				<td colspan="5" align="right">
					<strong>ISR: $ <?php echo number_format($total['isr'],2); ?></strong>
				</td>
			</tr>
			<tr>
				<td colspan="5" align="right">
					<strong>Total: $ <?php echo number_format($total['total'],2); ?></strong>
				</td>
			</tr>
		</table>
	</div>

	<div class="bloque_detalle_pedido">
		<h3>Forma de Pago</h3>
		<form action="<?php echo base_url(); ?>principal/enviar_pedido" method="post">
		<table class="tabla2">
			<tr>
				<td><strong>Elige: </strong></td>
			</tr>
			<tr>
				<td>
					<select name="tipo_pago" id="tipo_pago" onchange="pagoOnChange(this)">
						<option value="1">Tarjeta de Crédito</option>
						<option value="2">Deposito bancario</option>
						<option value="3">En efectivo</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" id="num_tarjeta" placeholder="Número de Tarjeta">
					<input type="text" id="vence_mes" placeholder="Mes">
					<input type="text" id="vence_ano" placeholder="Año">
				</td>
			</tr>
			<tr>
				<td><strong>Comentario:</strong></td>
			</tr>
			<tr>
				<td><textarea name="comentario" id="comentario" cols="20" rows="5"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="Enviar pedido"></td>
			</tr>
		</table>
		</form>
	</div>
	<p align="center">
		<?php echo anchor('principal/catalogo', '<< Continuar comprando', 'title="Regresar al Catalogo"'); ?>
		<?php //echo anchor('principal/enviar_pedido', 'Enviar pedido >>', 'title="Enviar el pedido"'); ?>
	</p>
	<br>Te invitamos a realizar una encuesta para darte un mejor servicio
	<br><a href='https://docs.google.com/forms/d/e/1FAIpQLSeC3toM7hiU7ncRjxs5KR0WXqLJQWteMF2hxZkbx6utUnSLoA/viewform' target='_blank'>Click aqui</a>
</div>
