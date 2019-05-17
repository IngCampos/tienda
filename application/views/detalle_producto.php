<div id="content">
	<div id="detalle_producto" class="jumbotron">
		<h3 class="col-12">Detalle del producto: <?php echo $producto->nombre; ?></h3>

		<img class="col-sm-12 col-md-6 col-lg-6 col-xl-6" src="<?php echo base_url(); ?>images/<?php echo $producto->imagen; ?>" width="300" alt="texto">
		<div id="info_producto" class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
			<p><strong>Precio: </strong>$ <?php echo number_format($producto->precio, 2); ?></p>
			<p><strong>Descripción: </strong><?php echo $producto->descripcion; ?></p>
			<p><strong>Categoría: </strong><?php echo $producto->categoria; ?></p>
			<?php 

			echo form_open('principal/add_item');
			echo form_fieldset();

			echo form_hidden('cantidad', 1);
			echo form_hidden('id_producto', $producto->id);
			echo form_hidden('precio', $producto->precio);
			echo form_hidden('nombre', $producto->nombre);
			echo form_hidden('imagen', $producto->imagen);
			$data = array(
              'name' 	=> 'btn_add_item',
              'id'      => 'btn_add_item',
              'value'   => 'Agregar al carrito',
              'class'	=> 'boton1 btn btn-primary'
            );
			echo form_submit($data);
			echo form_fieldset_close();
			echo form_close();
			?>
		</div>
	</div>
</div>