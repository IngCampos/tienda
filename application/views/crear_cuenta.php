		<center><h1>Crear cuenta de usuario</h1></center>
<div id="content" align="center">
	<div id="form_login">
		<p>Por favor proporcione los siguientes datos:</p>
		<?php $this->form_validation->set_error_delimiters('<div class="error">', '</div>'); ?>
		<?php echo validation_errors(); ?>
		<?php echo form_open("login/guardar_cuenta"); ?>
		<ul align="right">
			<li>
				<label for="nombre">Nombre: </label>				
				<?php
					$data = array(
		              'name'  => 'nombre',
		              'id'    => 'nombre',
		              'value' => set_value('nombre'),
		            );
					echo form_input($data);
				?>
			</li>
			<li>
				<label for="apellidos">Apellidos: </label>
				<?php
					$data = array(
		              'name'  => 'apellidos',
		              'id'    => 'apellidos',
		              'value' => set_value('apellidos'),
		            );
					echo form_input($data);
				?>
			</li>
			<li>
				<label for="usuario">Usuario: </label>
				<?php
					$data = array(
		              'name'  => 'usuario',
		              'id'    => 'usuario',
		              'value' => set_value('usuario'),
		            );
					echo form_input($data);
				?>
			</li>
			<li>
				<label for="password">Password: </label>
				<?php
					$data = array(
						'name'  => 'password',
						'id' 	=> 'password',
						'value' => set_value('password'),
					);
					echo form_password($data);
				?>
			</li>
			<li>
				<label for="password2">Repita Password: </label>							
				<?php
					$data = array(
						'name'  => 'password2',
						'id' 	=> 'password2'
					);
					echo form_password($data);
				?>
			</li>
			<li>
				<label for="correo">Correo: </label>
				<?php
					$data = array(
		              'name'  => 'correo',
		              'id'    => 'correo',
		              'value' => set_value('correo'),
		            );
					echo form_input($data);
				?>
			</li>		
			<li>
				<label for="direccion">Direccion: </label>
				<?php
					$data = array(
		              'name'  => 'direccion',
		              'id'    => 'direccion',
		              'value' => set_value('direccion'),
		              'rows'  => 5,
		              'cols'  => 45,
		            );
					echo form_textarea($data);
				?>
			</li>
			<li>
				<?php echo form_submit("aceptar", "Aceptar"); ?>
				<?php echo form_reset("cancelar", "Cancelar"); ?>
			</li>
		</ul>
		<?php echo form_close(); ?>
	</div>
</div>