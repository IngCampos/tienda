<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>js/morris.css" />
<script src="<?php echo base_url();?>/js/raphael-min.js"></script>
<script src="<?php echo base_url();?>/js/morris.js"></script>
<center>
    <h1>Estadisticas</h1>
</center>
    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
<div class="form-row jumbotron">
<div class="form-group col-sm-12 col-md-6 col-lg-6 col-xl-4">
        <label for="f-inicial">Fecha y hora inicial</label>
        <input class="form-control" id="f-inicial" type="datetime-local" name="f-inicial" value="<?php if(!isset($_POST['f-inicial'])) echo date('Y').'-'.date('m').'-01T00:00';  else echo $_POST['f-inicial'];?>" max="<?php echo date('Y').'-'.date('m').'-'.date('d').'T23:59';?>" required>
    </div>
    <div class="form-group col-sm-12 col-md-6 col-lg-6 col-xl-4">
        <label for="f-final">Fecha y hora final</label>
        <input class="form-control" id="f-final" type="datetime-local" name="f-final" value="<?php if(!isset($_POST['f-final'])) echo date('Y').'-'.date('m').'-'.date('d').'T'.date('H').':'.date('i'); else echo $_POST['f-final'];?>" max="<?php echo date('Y').'-'.date('m').'-'.date('d').'T23:59';?>" required>
    </div>
    <div class=" form-group col-sm-12 col-md-12 col-lg-12 col-xl-4">
    <label class="form-control">Fecha y hora actual: <?php echo date('Y').'-'.date('m').'-'.date('d').'T'.date('H').':'.date('i')?></label>
        <input class="form-control btn btn-primary" type="submit" value="Generar reporte">
    </div>
</div>
    </form>
<?php if(isset($_POST['f-inicial']) && isset($_POST['f-final']) && $_POST['f-inicial']<$_POST['f-final']): ?>
<?php 	
$inicio = explode("T", $_POST['f-inicial']);//explode para separar la fecha de la hora, Esa T estorba para la consulta
$final = explode("T", $_POST['f-final']);

// Conexion a la base de datos para obtener la informacion para las graficas
$conexion = new PDO('mysql:host=localhost; dbname=cdshopco_ldstore3;','root','');
//----
$statement2 = $conexion->prepare("SELECT MOB_DESK, COUNT(MOB_DESK) AS REPETICIONES FROM datagen AS a WHERE DATE BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY MOB_DESK");
//Consulta SQL, generando el numero de repeticiones, y  validando que las fechas sean entre las que se pusieron en el form
$statement2->execute();
$estadistica2 = $statement2->fetchAll();
$estadistica2valor = "";
$total=0;
foreach($estadistica2 as $valor){
$total= $total+$valor["REPETICIONES"];//obtener el valor total para determinar el porcentaje
}
foreach($estadistica2 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);//asignacion de porcentaje
  $estadistica2valor.= "{label: '".$valor["MOB_DESK"]."(".$valor["REPETICIONES"].")', value: ".$valor["PORCENTAJE"]."},";//valores que iran en el arreglo para la grafica
}
$estadistica2valor = substr ($estadistica2valor, 0, -1);//se elimina el ultimo caracter que es una , que marcaria error
//----
$statement3 = $conexion->prepare("SELECT estad_paginas.NOMBRE_PAGINA, COUNT(estad_paginas.ID_PAGINA) AS REPETICIONES FROM estadisticas_paginas INNER JOIN estad_paginas ON estadisticas_paginas.ID_PAGINA=estad_paginas.ID_PAGINA WHERE FECHA BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY estad_paginas.ID_PAGINA");
$statement3->execute();
$estadistica3 = $statement3->fetchAll();
$estadistica3valor = "";
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
$statement4 = $conexion->prepare("SELECT DATE, COUNT(DATE) AS REPETICIONES FROM datagen AS a WHERE DATE BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY DATE");
$statement4->execute();
$estadistica4 = $statement4->fetchAll();
$estadistica4valor = "";
$total=0;
foreach($estadistica4 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica4 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica4valor.= "{x: '".$valor["DATE"]."', y: ".$valor["REPETICIONES"].",z:".$valor["PORCENTAJE"]."},";
}
$estadistica4valor = substr ($estadistica4valor, 0, -1);
//----
$statement10 = $conexion->prepare("SELECT OS, COUNT(OS) AS REPETICIONES FROM datagen AS a WHERE DATE BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY OS");
$statement10->execute();
$estadistica10 = $statement10->fetchAll();
$estadistica10valor = "";
$total=0;
foreach($estadistica10 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica10 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica10valor.= "{label: '".$valor["OS"]."(".$valor["REPETICIONES"].")', value: ".$valor["PORCENTAJE"]."},";
}
$estadistica10valor = substr ($estadistica10valor, 0, -1);
//----
$statement11 = $conexion->prepare("SELECT BROWSER, COUNT(BROWSER) AS REPETICIONES FROM datagen AS a WHERE DATE BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY BROWSER");
$statement11->execute();
$estadistica11 = $statement11->fetchAll();
$estadistica11valor = "";
$total=0;
foreach($estadistica11 as $valor){
$total= $total+$valor["REPETICIONES"];
}
foreach($estadistica11 as $valor){
  $valor["PORCENTAJE"] =  (round($valor["REPETICIONES"]/($total), 2)*100);
  $estadistica11valor.= "{label: '".$valor["BROWSER"]."(".$valor["REPETICIONES"].")', value: ".$valor["PORCENTAJE"]."},";
}
$estadistica11valor = substr ($estadistica11valor, 0, -1);
//----
$statement18 = $conexion->prepare("SELECT TERMINO, COUNT(TERMINO) AS REPETICIONES FROM busquedas AS a WHERE FECHA BETWEEN '$inicio[0] $inicio[1]:00' AND '$final[0] $final[1]:00' GROUP BY TERMINO");
$statement18->execute();
$estadistica18 = $statement18->fetchAll();
$estadistica18valor = "";
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
    <center><h4>Reporte generado del <?php echo $inicio[0].' '.$inicio[1].' al '.$final[0].' '.$final[1];?></h4></center>
<div class="row jumbotron">
    <button class="col-12 btn btn-primary">Sitio web</button>
    <div class="card border-primary col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 1</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Fuente de obtención de usuarios</h5>
            <p class="card-text">
            <div id="e1" class="grafica"></div>
            </p>
        </div>
    </div>
    <?php if($estadistica2valor!=""): ?>
    <div class="card border-primary col-sm-6 col-md-6 col-lg-6 col-xl-3">
          <div class="card-header">Estadistica 2</div>
          <div class="card-body text-primary">
              <h5 class="card-title">Dispositivos con los que los usuarios se conectan</h5>
              <p class="card-text">
                  <div id="e2" class="grafica"></div>
              </p>
          </div>
      </div>
      <?php endif; ?>
      <?php if($estadistica3valor!=""): ?>
      <div class="card border-primary col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 3</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Paginas mas visitadas</h5>
            <p class="card-text">
            <div id="e3" class="grafica"></div>
            </p>
        </div>
    </div>
    <?php endif; ?>
    <?php if($estadistica4valor!=""): ?>
    <div class="card border-primary col-12">
        <div class="card-header">Estadistica 4</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Dia y hora que se conectan los usuarios</h5>
            <p class="card-text">
            <div id="e4" class="grafica"></div>
          </p>
        </div>
      </div>
<?php endif; ?>
<button class="col-12 btn btn-success">Usuarios</button>
    <div class="card border-success col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 5</div>
        <div class="card-body text-success">
            <h5 class="card-title">Idiomas que hablan</h5>
            <p class="card-text">
                <div id="e5" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-success col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 6</div>
        <div class="card-body text-success">
            <h5 class="card-title">Sexo que tienen</h5>
            <p class="card-text">
                <div id="e6" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-success col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 7</div>
        <div class="card-body text-success">
            <h5 class="card-title">Edad que tienen</h5>
            <p class="card-text">
                <div id="e7" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-success col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 8</div>
        <div class="card-body text-success">
            <h5 class="card-title">Cuidad que son</h5>
            <p class="card-text">
                <div id="e8" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-success col-sm-6 col-md-4 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 9</div>
        <div class="card-body text-success">
            <h5 class="card-title">Pais que son</h5>
            <p class="card-text">
                <div id="e9" class="grafica"></div>
            </p>
        </div>
    </div>
    <?php if($estadistica10valor!=""): ?>
    <div class="card border-success col-sm-6 col-md-4 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 10</div>
        <div class="card-body text-success">
            <h5 class="card-title">Sistemas Operativos que usan</h5>
            <p class="card-text">
                <div id="e10" class="grafica"></div>
            </p>
        </div>
    </div>
    <?php endif; ?>
    <?php if($estadistica11valor!=""): ?>
    <div class="card border-success col-sm-12 col-md-4 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 11</div>
        <div class="card-body text-success">
            <h5 class="card-title">Navegador que usan</h5>
            <p class="card-text">
                <div id="e11" class="grafica"></div>
            </p>
        </div>
    </div>
    <?php endif; ?>
    <button class="col-12 btn btn-danger">Productos</button>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 12</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Productos mas visitados</h5>
            <p class="card-text">
                <div id="e12" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 13</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Productos mas comprados</h5>
            <p class="card-text">
                <div id="e13" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-danger col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 14</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Categorias mas visitadas</h5>
            <p class="card-text">
                <div id="e14" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-danger col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 15</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Categorias menos visitadas</h5>
            <p class="card-text">
                <div id="e15" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 16</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Productos menos visitados </h5>
            <p class="card-text">
                <div id="e16" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 17</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Productos menos comprados</h5>
            <p class="card-text">
                <div id="e17" class="grafica"></div>
            </p>
        </div>
    </div>
    <?php if($estadistica18valor!=""): ?>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 18</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Terminos mas buscados</h5>
            <p class="card-text">
                <div id="e18" class="grafica"></div>
            </p>
        </div>
    </div>
    <?php endif; ?>
</div>
<?php else:?>
<div class="row jumbotron">
    <div class='col-12'><h4>La fecha y hora inicial debe ser menor y no igual a la final.</div>
</div>
<?php endif; ?>
<!-- Graficas, configuracion y datos -->
<script>
Morris.Donut({
  element: 'e1',
  data: [
    {value: 70, label: 'Facebook(700)'},
    {value: 30, label: 'Twitter(300)'}
  ],
  backgroundColor: '#ccc',
  labelColor: '#060',
  colors: [
    '#0B00ff',
    '#3f00ff',
    '#6700ff',
    '#9500ff'
  ],
  formatter: function (x) { return x + "%"}
});
<?php if($estadistica2valor!=""): ?>
Morris.Donut({
  element: 'e2',
  data: [
    <?php echo  $estadistica2valor;?>
  ],
  backgroundColor: '#ccc',
  labelColor: '#060',
  colors: [
    '#0B00ff',
    '#3f00ff',
    '#6700ff',
    '#9500ff'
  ],
  formatter: function (x) { return x + "%"}
});
<?php endif; ?>
<?php if($estadistica3valor!=""): ?>
Morris.Bar({
  element: 'e3',
  data: [
    <?php echo  $estadistica3valor;?>
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Visitas'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var blue = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(0,0,' + blue + ')';
    }
    else {
      return '#000';
    }
  }  
});
<?php endif; ?>
<?php if($estadistica4valor!=""): ?>
Morris.Area({
  element: 'e4',
  data: [
    <?php echo  $estadistica4valor;?>
  ],
  xkey: 'x',
  ykeys: ['y','z'],
  labels: ['Conexiones','Porcentaje%'],
});
<?php endif; ?>
Morris.Donut({
  element: 'e5',
  data: [
    {value: 100, label: 'Español(50)'}
  ],
  backgroundColor: '#ccc',
  labelColor: '#060',
  colors: [
    '#0BA462',
    '#39B580',
    '#67C69D',
    '#95D7BB'
  ],
  formatter: function (x) { return x + "%"}
});
Morris.Donut({
  element: 'e6',
  data: [
    {value: 50, label: 'Hombre(50)'},
    {value: 50, label: 'Mujer(50)'}
  ],
  backgroundColor: '#ccc',
  labelColor: '#060',
  colors: [
    '#0BA462',
    '#39B580',
    '#67C69D',
    '#95D7BB'
  ],
  formatter: function (x) { return x + "%"}
});
Morris.Bar({
  element: 'e7',
  data: [
    {x: '20 años(66%)', y: 10},
    {x: '31 años(34%)', y: 20}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Personas'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var green = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(0,' + green + ',0)';
    }
    else {
      return '#000';
    }
  }
});
Morris.Bar({
  element: 'e8',
  data: [
    {x: 'Aguascalientes(66%)', y: 20},
    {x: 'Jesus Maria(34%)', y: 10}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Usuarios'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var green = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(0,' + green + ',0)';
    }
    else {
      return '#000';
    }
  }
});
Morris.Donut({
  element: 'e9',
  data: [
    {value: 100, label: 'Mexico(50)'}
  ],
  backgroundColor: '#ccc',
  labelColor: '#060',
  colors: [
    '#0BA462',
    '#39B580',
    '#67C69D',
    '#95D7BB'
  ],
  formatter: function (x) { return x + "%"}
});
<?php if($estadistica10valor!=""): ?>
Morris.Donut({
    element: 'e10',
    data: [
        <?php echo  $estadistica10valor;?>
    ],
    backgroundColor: '#ccc',
    labelColor: '#060',
  colors: [
    '#0BA462',
    '#39B580',
    '#67C69D',
    '#95D7BB'
  ],
  formatter: function (x) { return x + "%"}
});
<?php endif; ?>
<?php if($estadistica11valor!=""): ?>
Morris.Donut({
  element: 'e11',
  data: [
    <?php echo  $estadistica11valor;?>
  ],
  backgroundColor: '#ccc',
  labelColor: '#060',
  colors: [
    '#0BA462',
    '#39B580',
    '#67C69D',
    '#95D7BB'
  ],
  formatter: function (x) { return x + "%"}
});
<?php endif; ?>
Morris.Bar({
  element: 'e12',
  data: [
    {x: 'Avengers(10%)', y: 200},
    {x: 'X-men(10%)', y: 100},
    {x: 'Mision imposible(10%)', y: 98},
    {x: 'Iron man(10%)', y: 50},
    {x: 'Hulk(10%)', y: 12},
    {x: 'No game no life(10%)', y: 10}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Visitas'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var red = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(' + red + ',0,0)';
    }
    else {
      return '#000';
    }
  }
});
Morris.Bar({
  element: 'e13',
  data: [
    {x: 'Avengers(10%)', y: 20},
    {x: 'X-men(10%)', y: 10},
    {x: 'Mision imposible(10%)', y: 8},
    {x: 'Iron man(10%)', y: 5},
    {x: 'Hulk(10%)', y: 1},
    {x: 'No game no life(10%)', y: 1}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Compras'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var red = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(' + red + ',0,0)';
    }
    else {
      return '#000';
    }
  }
});
Morris.Donut({
  element: 'e14',
  data: [
    {value: 50, label: 'CD(50)'},
    {value: 10, label: 'DVD(10)'},
    {value: 40, label: 'BlU-RAY(40)'}
  ],
  backgroundColor: '#ccc',
  labelColor: '#060',
  colors: [
    '#ff0462',
    '#ff0580',
    '#ff069D',
    '#ff07BB'
  ],
  formatter: function (x) { return x + "%"}
});
Morris.Donut({
  element: 'e15',
  data: [
    {value: 50, label: 'VINIL(50)'},
    {value: 10, label: 'DVD 3D(10)'},
    {value: 40, label: 'Blu Ray 3D(40)'}
  ],
  backgroundColor: '#ccc',
  labelColor: '#060',
  colors: [
    '#ff0462',
    '#ff0580',
    '#ff069D',
    '#ff07BB'
  ],
  formatter: function (x) { return x + "%"}
});
Morris.Bar({
  element: 'e16',
  data: [
    {x: 'Avengers(10%)', y: 200},
    {x: 'X-men(10%)', y: 100},
    {x: 'Mision imposible(10%)', y: 98},
    {x: 'Iron man(10%)', y: 50},
    {x: 'Hulk(10%)', y: 12},
    {x: 'No game no life(10%)', y: 10}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Visitas'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var red = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(' + red + ',0,0)';
    }
    else {
      return '#000';
    }
  }
});
Morris.Bar({
  element: 'e17',
  data: [
    {x: 'Avengers(10%)', y: 20},
    {x: 'X-men(10%)', y: 10},
    {x: 'Mision imposible(10%)', y: 8},
    {x: 'Iron man(10%)', y: 5},
    {x: 'Hulk(10%)', y: 1},
    {x: 'No game no life(10%)', y: 1}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Compras'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var red = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(' + red + ',0,0)';
    }
    else {
      return '#000';
    }
  }
});
<?php if($estadistica18valor!=""): ?>
Morris.Bar({
  element: 'e18',
  data: [
<?php echo  $estadistica18valor;?>
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Cantidad'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var red = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(' + red + ',0,0)';
    }
    else {
      return '#000';
    }
  }
});
<?php endif; ?>
</script>