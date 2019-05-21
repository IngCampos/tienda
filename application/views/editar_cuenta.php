<?php
$carrito = $this->session->userdata("carrito");
$usuario = $this->session->userdata("usuario");
?>
<div id="content" align="center">
	<div id="form_editar">
		<h2>Actualizar datos</h2>
		<?php $this->form_validation->set_error_delimiters('<div class="error">', '</div>'); ?>
		<?php echo validation_errors(); ?>
		<div id="form-login">
			<form action ="http://www.cdshop.com.mx/login/actualizar" method="post">
				<label for="nombre">Nombre: </label>
				<input type ="text" name ="nombre" value="<?php echo $usuario->nombre;?>" /><br>
				<label for="apellidos">Apellidos: </label>
				<input type ="text" name ="apellidos" value="<?php echo $usuario->apellidos;?>" /><br>
				<label for="correo">Correo: </label>
				<input type ="text" name ="correo" value="<?php echo $usuario->correo;?>" /><br>
				<label for="usuario">Usuario: </label>
				<input type ="text" name ="usuario" value="<?php echo $usuario->usuario;?>" /><br>
				<label for="password">Password: </label>
				<input type ="password" name ="password" value="<?php echo $usuario->password;?>" /><br>
				<label for="direccion">Direccion: </label>
				<textarea name ="direccion"><?php echo $usuario->direccion;?></textarea>
				<input type="text" name="id"  style="display: none;" value="<?php echo $usuario->id;?>"><br>
			
			
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        		<button type="submit" class="btn btn-primary">Guardar cambios</button>
        		</form>
        		</div>
      		
	</div>
</div>