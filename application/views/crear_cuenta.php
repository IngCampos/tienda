		<center><h1>Crear cuenta de usuario</h1></center>
<div id="content" align="center">
	<div id="form_login">
		<p>Por favor proporcione los siguientes datos:</p>
		<?php $this->form_validation->set_error_delimiters('<div class="error">', '</div>'); ?>
		<?php echo validation_errors(); ?>
		<?php echo form_open("login/guardar_cuenta"); ?>
		<ul align="left">
			<div class="form-group row">
				<label for="nombre">Nombre: </label>				
				<?php
					$data = array(
		              'name'  => 'nombre',
                      'id'    => 'nombre',
                      'minlength' => '6',
		              'value' => set_value('nombre'),
                      'class' => 'form-control',
                      'required' => 'required'               
		            );
					echo form_input($data);
				?>
				<div class="valid-feedback">
          Nombre validado!
        </div>
        <div class="invalid-feedback">
            El nombre debe tener mas de 6 caracteres.
        </div>
			</div>
			<div class="form-group row">
				<label for="apellidos">Apellidos: </label>
				<?php
					$data = array(
		              'name'  => 'apellidos',
		              'id'    => 'apellidos',
                      'minlength' => '6',
		              'value' => set_value('apellidos'),
					  'class' => 'form-control',
                      'required' => 'required'
		            );
					echo form_input($data);
				?>
				<div class="valid-feedback">
          Apellido validado!
        </div>
        <div class="invalid-feedback">
            El Apellido debe tener mas de 6 caracteres.
        </div>
			</div>
			<div class="form-group row">
				<label for="usuario">Usuario: </label>
				<?php
					$data = array(
		              'name'  => 'usuario',
		              'id'    => 'usuario',
                      'minlength' => '6',
		              'value' => set_value('usuario'),
                      'class' => 'form-control',
                      'required' => 'required'
		            );
					echo form_input($data);
				?>
				<div class="valid-feedback">
          Nombre de usuario validado!
        </div>
        <div class="invalid-feedback">
            El nombre de usuario debe tener mas de 6 caracteres.
        </div>
			</div>
			<div class="form-group row">
				<label for="password">Password: </label>
				<?php
					$data = array(
						'name'  => 'password',
						'id' 	=> 'password',
                        'minlength' => '6',
						'value' => set_value('password'),
                        'class' => 'form-control',
                        'required' => 'required'
					);
					echo form_password($data);
				?>
				<div class="valid-feedback">
          Password validado!
        </div>
        <div class="invalid-feedback">
            El password debe contener mas de 6 caracteres.
        </div>
			</div>
			<div class="form-group row">
				<label for="password2">Repita Password: </label>							
				<?php
					$data = array(
						'name'  => 'password2',
						'id' 	=> 'password2',
						'class' => 'form-control',
                        'required' => 'required'
					);
					echo form_password($data);
				?>
				<div class="valid-feedback">
          Los passwords coincide!
        </div>
        <div class="invalid-feedback">
            Los passwords no coinciden.
        </div>
			</div>
			<div class="form-group row">
				<label for="correo">Correo: </label>
				<?php
					$data = array(
		              'name'  => 'correo',
                      'id'    => 'correo',
                      'type' => 'email',
                      'value' => set_value('correo'),
                      'class' => 'form-control',
                      'required' => 'required'
		            );
					echo form_input($data);
				?>
				<div class="valid-feedback">
          Correo validado!
        </div>
        <div class="invalid-feedback">
            El correo no es valido(ejemplo admi@gmail.com).
        </div>
			</div>		
			<div class="form-group row">
				<label for="direccion">Direccion: </label>
				<?php
					$data = array(
		              'name'  => 'direccion',
		              'id'    => 'direccion',
		              'value' => set_value('direccion'),
		              'rows'  => 5,
		              'cols'  => 45,
					  'class' => 'form-control',
                      'required' => 'required'
		            );
					echo form_textarea($data);
				?>
				<div class="valid-feedback">
          Direccion validada!
        </div>
        <div class="invalid-feedback">
            La direccion no es valida.
        </div>
			</div>
			<div class="form-group row">
				<?php echo form_submit("aceptar", "Aceptar"); ?>
				<?php echo form_reset("cancelar", "Cancelar","id='cancelar'"); ?>
			</div>
		</ul>
		<?php echo form_close(); ?>
	</div>
</div>
<script src="<?php echo base_url();?>/js/validaciones_formularios.js"></script>
