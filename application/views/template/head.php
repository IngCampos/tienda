<!DOCTYPE HTML>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Inicio</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/style.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/bootstrap.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Abel|Didact+Gothic|Questrial|Quicksand" rel="stylesheet">
	<script src="<?php echo base_url();?>/js/jquery-1.9.1.min.js"></script>
	<script src="<?php echo base_url();?>/js/unslider.min.js"></script>
	<script src="<?php echo base_url();?>/js/funciones.js"></script>
</head>
<body>
	<?php if($this->session->flashdata('msg')): ?>
	<div id="msg">
		<em><?php echo $this->session->flashdata('msg'); ?></em>
	</div>
	<?php endif; ?>
	<div id="container-fluid">