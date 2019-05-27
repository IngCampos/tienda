<?php
$buzon ="";
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
 $buzon_cantidad = $conexion2->prepare("SELECT COUNT(*) AS REPETICIONES FROM buzon WHERE FECHA BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00'");
 //Consulta SQL, generando el numero de repeticiones, y  validando que las fechas sean entre las que se pusieron en el form
 $buzon_cantidad->execute();
 $buzon_cantidad = $buzon_cantidad->fetchAll();
  $buzon_total = $conexion2->prepare("SELECT COUNT(*) AS REPETICIONES FROM buzon");
  //Consulta SQL, generando el numero de repeticiones, y  validando que las fechas sean entre las que se pusieron en el form
  $buzon_total->execute();
  $buzon_total = $buzon_total->fetchAll();
  $buzon = $buzon_cantidad[0]["REPETICIONES"]." de ".$buzon_total[0]["REPETICIONES"];
  //
$statement1 = $conexion3->prepare("SELECT DIRECCION_FUENTE, COUNT(DIRECCION_FUENTE) AS REPETICIONES FROM estad_sitios_dir AS a WHERE FECHA BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY DIRECCION_FUENTE");
//Consulta SQL, generando el numero de repeticiones, y  validando que las fechas sean entre las que se pusieron en el form
$statement1->execute();
$estadistica1 = $statement1->fetchAll();
$total=0;
foreach($estadistica1 as $valor){
$total= $total+$valor["REPETICIONES"];//obtener el valor total para determinar el porcentaje
}
foreach($estadistica1 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);//asignacion de porcentaje
  $estadistica1valor.= "{label: '".$valor["DIRECCION_FUENTE"]."(".$valor["REPETICIONES"].")', value: ".$valor["PORCENTAJE"]."},";//valores que iran en el arreglo para la grafica
}
$estadistica1valor = substr ($estadistica1valor, 0, -1);//se elimina el ultimo caracter que es una , que marcaria error
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
$statement4 = $conexion2->prepare("SELECT SUBSTRING(Ultimo_Acceso, 1, 13) as Ultimo_Acceso, COUNT(SUBSTRING(Ultimo_Acceso, 1, 13)) AS REPETICIONES FROM dispositivos AS a WHERE Ultimo_Acceso BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY SUBSTRING(Ultimo_Acceso, 1, 13)");
$statement4->execute();
$estadistica4 = $statement4->fetchAll();
$total=0;
foreach($estadistica4 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica4 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica4valor.= "{x: '".$valor["Ultimo_Acceso"].":00:00', y: ".$valor["REPETICIONES"].",z:".$valor["PORCENTAJE"]."},";
}
$estadistica4valor = substr ($estadistica4valor, 0, -1);
//----
$statement5 = $conexion3->prepare("SELECT IDIOMA, COUNT(IDIOMA) AS REPETICIONES FROM usuarios_atrib AS a WHERE FECHA_REGISTRO BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY IDIOMA");
$statement5->execute();
$estadistica5 = $statement5->fetchAll();
$total=0;
foreach($estadistica5 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica5 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica5valor.= "{label: '".$valor["IDIOMA"]."(".$valor["REPETICIONES"].")',value:".$valor["PORCENTAJE"]."},";
}
$estadistica5valor = substr ($estadistica5valor, 0, -1);
//----
$statement6 = $conexion3->prepare("SELECT GENERO, COUNT(GENERO) AS REPETICIONES FROM usuarios_atrib AS a WHERE FECHA_REGISTRO BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY GENERO");
$statement6->execute();
$estadistica6 = $statement6->fetchAll();
$total=0;
foreach($estadistica6 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica6 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica6valor.= "{label: '".$valor["GENERO"]."(".$valor["REPETICIONES"].")',value:".$valor["PORCENTAJE"]."},";
}
$estadistica6valor = substr ($estadistica6valor, 0, -1);
//----
$statement7 = $conexion3->prepare("SELECT YEAR(FECHA_NAC), COUNT(YEAR(FECHA_NAC)) AS REPETICIONES FROM usuarios_atrib AS a GROUP BY YEAR(FECHA_NAC)");
$statement7->execute();
$estadistica7 = $statement7->fetchAll();
$total=0;
foreach($estadistica7 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica7 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica7valor.= "{x: '".(2019-$valor["YEAR(FECHA_NAC)"])."(".$valor["PORCENTAJE"]."%)',y:".$valor["REPETICIONES"]."},";
}
$estadistica7valor = substr ($estadistica7valor, 0, -1);
// #SELECT ROUND(datediff('2020-05-10 10:00:00',FECHA_NAC)/365) as AÑOS,COUNT(ROUND(datediff('2020-05-10 10:00:00',FECHA_NAC)/365)) as REPETICIONES FROM usuarios_atrib GROUP BY ROUND(datediff('2020-05-10 10:00:00',FECHA_NAC)/365)
// Consulta que no funciono, mas que desde phpmyadmi
//----
$statement8 = $conexion3->prepare("SELECT ESTADO, COUNT(ESTADO) AS REPETICIONES FROM usuarios_atrib AS a WHERE FECHA_REGISTRO BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY ESTADO");
$statement8->execute();
$estadistica8 = $statement8->fetchAll();
$total=0;
foreach($estadistica8 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica8 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica8valor.= "{x: '".$valor["ESTADO"]."(".$valor["PORCENTAJE"]."%)',y:".$valor["REPETICIONES"]."},";
}
$estadistica8valor = substr ($estadistica8valor, 0, -1);
//----
$statement9 = $conexion3->prepare("SELECT pais.PAIS, COUNT(pais.PAIS) AS REPETICIONES FROM usuarios_atrib INNER JOIN pais ON usuarios_atrib.ID_PAIS=pais.ID_PAIS WHERE FECHA_REGISTRO BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY pais.PAIS");
$statement9->execute();
$estadistica9 = $statement9->fetchAll();
$total=0;
foreach($estadistica9 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica9 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica9valor.= "{label: '".$valor["PAIS"]."(".$valor["REPETICIONES"].")',value:".$valor["PORCENTAJE"]."},";
}
$estadistica9valor = substr ($estadistica9valor, 0, -1);
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