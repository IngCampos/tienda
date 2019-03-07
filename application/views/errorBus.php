<div id="content">
	<h2 align="center">CATÁLOGO DE PRODUCTOS</h2>
	<ul id="menu_catalogo">
		<li><?php echo anchor("principal/catalogo", "Todos"); ?></li>
		<?php foreach($categorias as $cat): ?>
			<li><?php echo anchor("principal/catalogo/" . $cat->id, $cat->nombre); ?></li>
		<?php endforeach; ?>
	</ul>
	<div id="productos">
		<p>Error! producto no encontrado</p>
	</div>
</div>