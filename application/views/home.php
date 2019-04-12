<div id="content" align="center">
	

	<div class="banner" width="100%">
	    <ul>
	    	<?php foreach($recientes as $r): ?>
	    		<li>
		        	<a style="width:100%;" href="<?php echo base_url(); ?>principal/catalogo/<?php echo $r->Categorias_id; ?>" 
		        		title="Ver en catalogo">
		        		<img  width="506px" src="<?php echo base_url(); ?>images/slide/<?php echo $r->imagen; ?>" alt="">
		    		</a>
		    	</li>
	    	<?php endforeach; ?>
	    </ul>
	</div>
	<p>Bienvenido a la pagina de inicio de <strong>CD Shop</strong>, disfruten su estancia.</p>
	
	<div id="widgets">
	<h3>Top 9 de CDs mas vendidos</h3>
		<?php foreach($aleatorios as $a): ?>
			<div class="widget">
				<h3><?php echo $a->nombre; ?></h3>
				<a href="<?php echo base_url(); ?>principal/detalle_producto/<?php echo $a->id; ?>" 
					title="Ver en catalogo">
					<img src="<?php echo base_url(); ?>images/<?php echo $a->imagen; ?>" width="150" height="150">
				</a>
			</div>
		<?php endforeach; ?>
		<h3>Top 9 de DVDs mas vendidos</h3>
		<?php foreach($aleatorios as $a): ?>
			<div class="widget">
				<h3><?php echo $a->nombre; ?></h3>
				<a href="<?php echo base_url(); ?>principal/detalle_producto/<?php echo $a->id; ?>" 
					title="Ver en catalogo">
					<img src="<?php echo base_url(); ?>images/<?php echo $a->imagen; ?>" width="150" height="150">
				</a>
			</div>
		<?php endforeach; ?>
		<h3>Top 9 de BLU-RAY mas vendidos</h3>
		<?php foreach($aleatorios as $a): ?>
			<div class="widget">
				<h3><?php echo $a->nombre; ?></h3>
				<a href="<?php echo base_url(); ?>principal/detalle_producto/<?php echo $a->id; ?>" 
					title="Ver en catalogo">
					<img src="<?php echo base_url(); ?>images/<?php echo $a->imagen; ?>" width="150" height="150">
				</a>
			</div>
		<?php endforeach; ?>
	</div>

</div>