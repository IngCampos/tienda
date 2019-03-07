<!DOCTYPE HTML>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Inicio</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/style1.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
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
	<div id="container">