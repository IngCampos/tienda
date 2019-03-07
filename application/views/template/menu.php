
<div style="width: 100%; height: auto; align-content: right; display: inline-block;">
<form action="http://localhost/tienda/principal/search" method="get"/>
<input type="text" name="search" placeholder="Buscar" style="margin-left: 64%; margin-bottom: -5px; right: 30px;">
<input type="submit" value="Buscar" style="display: inline-block;  float: right; "> 
</form>
</div>
<div id="menu">

	<ul class="menu_principal" style="display: block;">
		<?php foreach(get_menu_catalogo() as $key=>$value): ?>
			<?php if($menu_current == $key): ?>
				<li><?php echo anchor("principal/" . $key, $value, 'class="current_item"'); ?></li>
			<?php else: ?>
				<li><?php echo anchor("principal/" . $key, $value); ?></li>
			<?php endif; ?>
		<?php endforeach; ?>

		<?php if($this->session->userdata("valid_user")){ ?>
		<?php $usuario = $this->session->userdata("usuario"); ?>
		<?php if($usuario->nombre=="admin1"){ ?>
		<?php echo '<li><a href="http://localhost/tienda/principal/administrar">Administrar<a/></li>'?>
		<?php } }?>

	</ul>
	<?php if($this->session->userdata("valid_user")): ?>
		<?php $usuario = $this->session->userdata("usuario"); ?>
		<p class="link_login"><span> Hola <?php echo $usuario->nombre; ?></span>
		<?php echo anchor("login/logout", "Finalizar sesión", array("title" => "Finalizar sesión", "style" => "color:white;")); ?>
		</p>
	<?php else: ?>
		<p class="link_login" COLOR="#FFF"><?php echo anchor("login", "Iniciar sesión", array( "style" => "color:white;")); ?></p>
	<?php endif; ?>
</div>