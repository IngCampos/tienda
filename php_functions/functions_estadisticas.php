<?php
$estadistica1valor = "";
$estadistica2valor = "";
$estadistica3valor = "";
$estadistica4valor = "";
$estadistica5valor = "";
$estadistica6valor = "";
$estadistica7valor = "";
$estadistica8valor = "";
$estadistica9valor = "";
$estadistica10valor = "";
$estadistica11valor = "";
$estadistica12valor = "";
$estadistica13valor = "";
$estadistica14valor = "";
$estadistica15valor = "";
$estadistica16valor = "";
$estadistica17valor = "";
$estadistica18valor = "";
// Conexion a la base de datos para obtener la informacion para las graficas
$conexion2 = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore2;','root','');
$conexion3 = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore3;','root','');
//----
$statement2 = $conexion2->prepare("SELECT Tipo, COUNT(Tipo) AS REPETICIONES FROM dispositivos AS a WHERE Ultimo_Acceso BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY Tipo");
//Consulta SQL, generando el numero de repeticiones, y  validando que las fechas sean entre las que se pusieron en el form
$statement2->execute();
$estadistica2 = $statement2->fetchAll();
$total=0;
foreach($estadistica2 as $valor){
$total= $total+$valor["REPETICIONES"];//obtener el valor total para determinar el porcentaje
}
foreach($estadistica2 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);//asignacion de porcentaje
  $estadistica2valor.= "{label: '".$valor["Tipo"]."(".$valor["REPETICIONES"].")', value: ".$valor["PORCENTAJE"]."},";//valores que iran en el arreglo para la grafica
}
$estadistica2valor = substr ($estadistica2valor, 0, -1);//se elimina el ultimo caracter que es una , que marcaria error
//----
$statement3 = $conexion3->prepare("SELECT estad_paginas.NOMBRE_PAGINA, COUNT(estad_paginas.ID_PAGINA) AS REPETICIONES FROM estadisticas_paginas INNER JOIN estad_paginas ON estadisticas_paginas.ID_PAGINA=estad_paginas.ID_PAGINA WHERE FECHA BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY estad_paginas.ID_PAGINA");
$statement3->execute();
$estadistica3 = $statement3->fetchAll();
$total=0;
foreach($estadistica3 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica3 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica3valor.= "{x: '".$valor["NOMBRE_PAGINA"]."(".$valor["PORCENTAJE"]."%)', y: ".$valor["REPETICIONES"]."},";
}
$estadistica3valor = substr ($estadistica3valor, 0, -1);
//----
$statement4 = $conexion2->prepare("SELECT Ultimo_Acceso, COUNT(Ultimo_Acceso) AS REPETICIONES FROM dispositivos AS a WHERE Ultimo_Acceso BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY Ultimo_Acceso");
$statement4->execute();
$estadistica4 = $statement4->fetchAll();
$total=0;
foreach($estadistica4 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica4 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica4valor.= "{x: '".$valor["Ultimo_Acceso"]."', y: ".$valor["REPETICIONES"].",z:".$valor["PORCENTAJE"]."},";
}
$estadistica4valor = substr ($estadistica4valor, 0, -1);
//----
$statement10 = $conexion2->prepare("SELECT SO, COUNT(SO) AS REPETICIONES FROM dispositivos AS a WHERE Ultimo_Acceso BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY SO");
$statement10->execute();
$estadistica10 = $statement10->fetchAll();
$total=0;
foreach($estadistica10 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica10 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica10valor.= "{label: '".$valor["SO"]."(".$valor["REPETICIONES"].")', value: ".$valor["PORCENTAJE"]."},";
}
$estadistica10valor = substr ($estadistica10valor, 0, -1);
//----
$statement11 = $conexion2->prepare("SELECT Navegador, COUNT(Navegador) AS REPETICIONES FROM dispositivos AS a WHERE Ultimo_Acceso BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY Navegador");
$statement11->execute();
$estadistica11 = $statement11->fetchAll();
$total=0;
foreach($estadistica11 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica11 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica11valor.= "{label: '".$valor["Navegador"]."(".$valor["REPETICIONES"].")', value: ".$valor["PORCENTAJE"]."},";
}
$estadistica11valor = substr ($estadistica11valor, 0, -1);
//----
$statement18 = $conexion3->prepare("SELECT TERMINO, COUNT(TERMINO) AS REPETICIONES FROM busquedas AS a WHERE FECHA BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY TERMINO");
$statement18->execute();
$estadistica18 = $statement18->fetchAll();
$total=0;
foreach($estadistica18 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica18 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100)."%";
  $estadistica18valor.= "{x: '".$valor["TERMINO"]."(".$valor["PORCENTAJE"].")', y: ".$valor["REPETICIONES"]."},";
}
$estadistica18valor = substr ($estadistica18valor, 0, -1);
?>