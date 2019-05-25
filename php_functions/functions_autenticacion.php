<?php
function Compare_devices($id){
    //extrae los dispositivos del usuario atravez de su id.
    try {
		$conexion = new PDO('mysql:host=localhost;dbname=cdshopco_ldstore2', 'root', '');
	} catch (PDOException $e) {
		echo "Error:" . $e->getMessage();
	}

	$statement = $conexion->prepare('SELECT * FROM dispositivos WHERE id = :id');
	$statement->execute(array(
			':id' => $id,
		));
    $resultado = $statement->fetch();
    //recorrido en caso de que existan mas dispositivos del usuario
if(Verify_devices($resultado)>=.75)//.75 significa que 3 de 4 parametros tienen que coincidir para el inicio de sesion
        return true;
    foreach ($statement as $row) {
        if(Verify_devices($row)>=.75)
        return true;
    }
    return false;
    //return true inicia sesion normalmente, su dispositivo si existe en la base de datos
}

function Verify_devices($device){
    //extrae los valores de un dispositivo y los compara, va haciendo una sumatoria en cada igualdad
    $simility = 0;
    if($device['SO']== getOS())
    $simility++;
    if($device['Navegador']== getBrowser())
    $simility++;
    if($device['User_Agent']== $_SERVER['HTTP_USER_AGENT'])
    $simility++;
    if($device['Tipo']== getDevice())
    $simility++;
    $simility = $simility/4;

    //codigo de ayuda para ver la comparacion de los dispositivos
    // echo "<hr>".$device["SO"]."===". getOS();
    // echo "<br>".$device["Navegador"]."===".getBrowser() ;
    // echo "<br>".$device["User_Agent"]."<br>". $_SERVER['HTTP_USER_AGENT'];
    // echo "<br>".$device["Tipo"]."===". getDevice();
    // echo "<br> Similitud en un ".($simility*100)."%<hr>";
    
    return $simility;
}

function Correo($correo, $token){
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $from = "admin@cdshop.com";
    $to = $correo;
    $subject = "Confirma tu cuenta";
    $message = "Este es tu token de acceso " .$token;
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
}
