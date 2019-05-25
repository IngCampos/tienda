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

function Correo_token($correo, $token,$nombre){
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $to = $correo;
    $subject = "Confirma tu cuenta";
    $message = "Estimado(a) ".$nombre.", un dispositivo desconocido a ingresado a tu cuenta de www.cdshop.com.mx, por seguridad ingresa este token " .$token;
    $headers = "From:admin@cdshop.com";
    mail($to,$subject,$message, $headers);
}

function Verify_token($id,$token){//se recibe la id del usuario y el token
    //se busca el token del usuario que ingreso
    $conexion = new PDO('mysql:host=localhost;dbname=cdshopco_ldstore2', 'root', '');
    $statement = $conexion->prepare('SELECT token FROM clientes WHERE id = :id');
    $statement->execute(array(
        ':id' => $id
    ));
    $resultado = $statement->fetch();
    $token_usuario = $resultado['token']; //determinacion del token del usuario que ingreso
   
    //impresion de los valores a comparar, el token ingresado y el guardado
    // echo "<br>".$token;
    // echo "<br>".$token_usuario."<br>";
    
    if($token==$token_usuario && $token_usuario!=9999999)//999999 es un token para evitar fallas de seguridad
    return true;
    else
    return false;

}

function Save_device($id){
    $connection = mysqli_connect('localhost', 'root', '', 'cdshopco_ldstore2');
				$q = "INSERT INTO dispositivos (id, SO,	Navegador,	User_Agent,	Tipo) VALUES ('$id',	'".getOS()."','".getBrowser()."','".$_SERVER['HTTP_USER_AGENT']."','".getDevice()."')";
				//los campos restantes se agregan automaticamente, id_dispositivo y Ultimo_Acceso
				$query = mysqli_query($connection, $q);

}