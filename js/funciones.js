var url_base = "http://localhost/tienda/";
//var url_base = "http://lab.linkdesigns.com/tienda/";

$("document").ready(function(){
	// Actualizar cantidad de un item
	$("body").on("click", ".actualizar_item", function(e){
		e.preventDefault();
		var id_producto = $(this).data("idprod");
		var cantidad = $("#update_cantidad_" + id_producto).val();

		window.location.href = url_base + "principal/update/" + id_producto + "/" + cantidad;
	});

	// Slider
	$('.banner').unslider({
		speed: 1500,               //  The speed to animate each slide (in milliseconds)
		delay: 3500,              //  The delay between slide animations (in milliseconds)
		complete: function() {},  //  A function that gets called after every slide animation
		keys: true,               //  Enable keyboard (left, right) arrow shortcuts
		dots: true,               //  Display dot navigation
		fluid: false              //  Support responsive design. May break non-responsive designs
	});

	// Ocultar div de mensajes
	setTimeout(
		function(){
			$("#msg").slideUp('slow');
		},
		5000
	);
});