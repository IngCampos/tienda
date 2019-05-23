
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #1F618D;">
<div>
<form action="http://localhost/tienda/principal/search" method="get" class="form-inline my-0 my-lg-0"/>
<input class="mr-sm-1" type="text" name="search" placeholder="Buscar" required>
<input class="btn btn-primary my-0 my-sm-0" type="submit" value="Buscar"> 
</form>
</div>
<?php if($this->session->userdata("valid_user")): ?>
		<?php $usuario = $this->session->userdata("usuario"); ?>
		<p class="link_login"><span> Hola <?php echo $usuario->nombre; ?></span><br>
		<?php echo anchor("login/logout", "Finalizar sesión", array("title" => "Finalizar sesión", "style" => "color:white;")); ?>
		</p>
	<?php else: ?>
		<p class="link_login" COLOR="#FFF"><?php echo anchor("login", "Iniciar sesión", array( "style" => "color:white;")); ?></p>
	<?php endif; ?>
</nav>
<div id="menu">
	<ul class="menu_principal" style="display: block;">
		<?php foreach(get_menu_catalogo() as $key=>$value): ?>
			<?php if($menu_current == $key): ?>
				<li>
				<?php echo anchor("principal/" . $key, $value, 'class="current_item"'); ?>
				</li>
			<?php else: ?>
				<li>
				<?php echo anchor("principal/" . $key, $value); ?>
				</li>
			<?php endif; ?>
		<?php endforeach; ?>

		<?php if($this->session->userdata("valid_user")){ ?>
		<?php $usuario = $this->session->userdata("usuario"); ?>
		<?php if($usuario->nombre=="admin1"){ ?>
		<?php echo '<li><a href="http://localhost/tienda/principal/administrar">Administrar<a/></li>'?>
		<?php echo '<li><a href="http://localhost/tienda/principal/estadisticas">Estadisticas<a/></li>'?>
		<?php echo '<li><a href="http://localhost/tienda/principal/buzon">Buzon<a/></li>'?>
		<?php } }?>
	</ul>
</div>
