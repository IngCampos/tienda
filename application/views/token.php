		<center><h1>Token</h1></center>
<div id="content" align="center">
	<div id="form_login">
		<p>Dispositivo desconocido, te enviamos un token a tu correo, favor de escribirlo a continuacion, junto con tus datos nuevamente:</p>
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
						'id' 	=> 'password',
						'required'=>'required'
					);
					echo form_password($data);
				?>
			</li>
			<li>
				<label for="token">Token: </label>				
				<?php
					$data = array(
						'name'  => 'token',
						'id' 	=> 'token',
						'required'=>'required'
					);
					echo form_input($data);
				?>
			</li>
			<li>
			<label for="guardar">Desea guardar dispositivo </label>				
			<?php
					$data = array(
						'name'  => 'guardar',
						'id' 	=> 'guardar',
						'value'=>'guardar'
					);
					echo form_checkbox($data);
				?>
				</li>
			<li>
				<?php echo form_submit("aceptttar btn", "Aceptar"); ?>
				<?php echo form_reset("cancelar", "Cancelar"); ?>
			</li>
		</ul>
		<p>El token solo se envia una vez, si deseas recibirlo nuevamente vuelve a iniciar sesion <?php echo anchor("login", "aquí"); ?></p>
	</div>
</div>