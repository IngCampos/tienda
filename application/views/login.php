<div id="content" align="center">
	<div id="form_login">
		<h2>Inicio de sesión</h2>
		<p>Para continuar es necesario que inicie sesión:</p>
		<?php $this->form_validation->set_error_delimiters('<div class="error">', '</div>'); ?>
		<?php echo validation_errors(); ?>
		<?php echo form_open("login/valida_usuario"); ?>
		<ul>
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
						'id' 	=> 'password'
					);
					echo form_password($data);
				?>
			</li>
			<li>
				<?php echo form_submit("aceptttar", "Aceptar"); ?>
				<?php echo form_reset("cancelar", "Cancelar"); ?>
			</li>
		</ul>
		<p>Si no tiene cuenta de usuario haga click <?php echo anchor("login/crear_cuenta", "aquí"); ?></p>
	</div>
</div>