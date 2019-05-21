<div id="content" align="center">
	<div id="form_editar">
		<h2>Actualizar datos</h2>
		<?php $this->form_validation->set_error_delimiters('<div class="error">', '</div>'); ?>
		<?php echo validation_errors(); ?>
		<div id="form-login">
			<form action ="http://www.cdshop.com.mx/principal/detalle_pedido"
				<label for="nombre">Nombre: </label>
				<input type ="text" name ="nombre" value="<?php echo $usuario->nombre;?>" />
				<label for="apellidos">Apellidos: </label>
				<input type ="text" name ="apellidos" value="<?php echo $usuario->apellidos;?>" />
				<label for="correo">Correo: </label>
				<input type ="text" name ="correo" value="<?php echo $usuario->correo;?>" />
				<label for="usuario">Usuario: </label>
				<input type ="text" name ="usuario" value="<?php echo $usuario->usuario;?>" />
				<label for="password">Password: </label>
				<input type ="password" name ="password" value="<?php echo $usuario->password;?>" />
				<label for="direccion">Direccion: </label>
				<textarea name ="direccion"><?php echo $usuario->direccion;?></textarea>
				<input type="text" name="id"  style="display: none;" value="<?php echo $usuario->id;?>">
			
			
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        		<button type="submit" class="btn btn-primary">Guardar cambios</button>
        		</form>
        		</div>
      		
	</div>
</div>