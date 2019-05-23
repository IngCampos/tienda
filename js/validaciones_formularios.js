//funciones que agregaran o quitaran clases que representaran si son validas o no las entradas
$("#nombre").on("change", function() {
  if ($("#nombre").val().length == 0) {
    $("#nombre").removeClass("is-invalid");
    $("#nombre").removeClass("is-valid");
  } else if ($("#nombre").val().length >= 6) {
    $("#nombre").addClass("is-valid");
    $("#nombre").removeClass("is-invalid");
  } else {
    $("#nombre").addClass("is-invalid");
    $("#nombre").removeClass("is-valid");
  }
});

$("#apellidos").on("change", function() {
  if ($("#apellidos").val().length == 0) {
    $("#apellidos").removeClass("is-invalid");
    $("#apellidos").removeClass("is-valid");
  } else if ($("#apellidos").val().length >= 6) {
    $("#apellidos").addClass("is-valid");
    $("#apellidos").removeClass("is-invalid");
  } else {
    $("#apellidos").addClass("is-invalid");
    $("#apellidos").removeClass("is-valid");
  }
});

$("#usuario").on("change", function() {
  if ($("#usuario").val().length == 0) {
    $("#usuario").removeClass("is-invalid");
    $("#usuario").removeClass("is-valid");
  } else if ($("#usuario").val().length >= 6) {
    $("#usuario").addClass("is-valid");
    $("#usuario").removeClass("is-invalid");
  } else {
    $("#usuario").addClass("is-invalid");
    $("#usuario").removeClass("is-valid");
  }
});

$("#password, #password2").on("change", function() {
  if ($("#password").val().length == 0) {
    $("#password").removeClass("is-invalid");
    $("#password").removeClass("is-valid");
  } else if ($("#password").val().length >= 6) {
    $("#password").addClass("is-valid");
    $("#password").removeClass("is-invalid");
  } else {
    $("#password").addClass("is-invalid");
    $("#password").removeClass("is-valid");
  }
});

$("#password2, #password").on("change", function() {
  if ($("#password2").val().length == 0) {
    $("#password2").removeClass("is-invalid");
    $("#password2").removeClass("is-valid");
  } else if ($("#password2").val() == $("#password").val()) {
    $("#password2").addClass("is-valid");
    $("#password2").removeClass("is-invalid");
  } else {
    $("#password2").addClass("is-invalid");
    $("#password2").removeClass("is-valid");
  }
});

function validar_email(email) {
  var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email) ? true : false;
}

$("#correo").on("change", function() {
  if ($("#correo").val().length == 0) {
    $("#correo").removeClass("is-invalid");
    $("#correo").removeClass("is-valid");
  } else if (validar_email($("#correo").val())) {
    $("#correo").addClass("is-valid");
    $("#correo").removeClass("is-invalid");
  } else {
    $("#correo").addClass("is-invalid");
    $("#correo").removeClass("is-valid");
  }
});

$("#direccion").on("change", function() {
  if ($("#direccion").val().length == 0) {
    $("#direccion").removeClass("is-invalid");
    $("#direccion").removeClass("is-valid");
  } else if ($("#direccion").val().length >= 10) {
    $("#direccion").addClass("is-valid");
    $("#direccion").removeClass("is-invalid");
  } else {
    $("#direccion").addClass("is-invalid");
    $("#direccion").removeClass("is-valid");
  }
});

$("#cancelar").on("click", function() {
  $("*").removeClass("is-valid");
  $("*").removeClass("is-invalid");
});

$("#descripcion").on("change", function() {
    if ($("#descripcion").val().length == 0) {
      $("#descripcion").removeClass("is-invalid");
      $("#descripcion").removeClass("is-valid");
    } else if ($("#descripcion").val().length >= 10) {
      $("#descripcion").addClass("is-valid");
      $("#descripcion").removeClass("is-invalid");
    } else {
      $("#descripcion").addClass("is-invalid");
      $("#descripcion").removeClass("is-valid");
    }
  });

  $("#titulo").on("change", function() {
    if ($("#titulo").val().length == 0) {
      $("#titulo").removeClass("is-invalid");
      $("#titulo").removeClass("is-valid");
    } else if ($("#titulo").val().length >= 3) {
      $("#titulo").addClass("is-valid");
      $("#titulo").removeClass("is-invalid");
    } else {
      $("#titulo").addClass("is-invalid");
      $("#titulo").removeClass("is-valid");
    }
  });