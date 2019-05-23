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
$inicio = $_POST['f-inicial'];
$final = $_POST['f-final'];
?>
    <center><h4>Reporte generado del <?php echo $inicio.' al '.$final;?></h4></center>
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
    <div class="card border-primary col-sm-6 col-md-6 col-lg-6 col-xl-3">
          <div class="card-header">Estadistica 2</div>
          <div class="card-body text-primary">
              <h5 class="card-title">Dispositivos con los que los usuarios se conectan</h5>
              <p class="card-text">
                  <div id="e2" class="grafica"></div>
              </p>
          </div>
      </div>
      <div class="card border-primary col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 3</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Paginas mas visitadas</h5>
            <p class="card-text">
            <div id="e3" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-primary col-12">
        <div class="card-header">Estadistica 4</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Dia y hora que se conectan los usuarios</h5>
            <p class="card-text">
            <div id="e4" class="grafica"></div>
          </p>
        </div>
      </div>
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
    <div class="card border-success col-sm-6 col-md-4 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 10</div>
        <div class="card-body text-success">
            <h5 class="card-title">Sistemas Operativos que usan</h5>
            <p class="card-text">
                <div id="e10" class="grafica"></div>
            </p>
        </div>
    </div>
    <div class="card border-success col-sm-12 col-md-4 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 11</div>
        <div class="card-body text-success">
            <h5 class="card-title">Navegador que usan</h5>
            <p class="card-text">
                <div id="e11" class="grafica"></div>
            </p>
        </div>
    </div>
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
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 18</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Terminos mas buscados</h5>
            <p class="card-text">
                <div id="e18" class="grafica"></div>
            </p>
        </div>
    </div>
</div>
<?php else:?>
<div class="row jumbotron">
    <div class='col-12'><h4>La fecha y hora inicial debe ser menor y no igual a la final.</div>
</div>
<?php endif; ?>

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
Morris.Donut({
  element: 'e2',
  data: [
    {value: 50, label: 'Computadora(50)'},
    {value: 50, label: 'Celular(50)'}
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
Morris.Bar({
  element: 'e3',
  data: [
    {x: 'Inicio(20%)', y: 200},
    {x: 'Conocenos(20%)', y: 20},
    {x: 'Catalogo(20%)', y: 11},
    {x: 'Contactanos(20%)', y: 30},
    {x: 'Carrito(20%)', y: 100}
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
Morris.Area({
  element: 'e4',
  data: [
      {x: '2018-05-21 20:00:00', y: 10},
      {x: '2018-05-22 8:00:00', y: 10},
      {x: '2018-05-23 20:00:00', y: 40}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Conexiones'],
});
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
Morris.Donut({
    element: 'e10',
    data: [
        {value: 99, label: 'Windows(99)'},
        {value: 1, label: 'Linux(1)'}
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
  element: 'e11',
  data: [
    {value: 50, label: 'Chrome(50)'},
    {value: 10, label: 'Explorer(10)'},
    {value: 40, label: 'Firefox(40)'}
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
Morris.Bar({
  element: 'e18',
  data: [
    {x: 'Beatles(5%)', y: 200},
    {x: 'Avengers(5%)', y: 111},
    {x: 'Miedo(5%)', y: 1123},
    {x: 'Terror(5%)', y: 132},
    {x: 'Comedia(5%)', y: 13},
    {x: 'Iron man(5%)', y: 13},
    {x: 'Hulk(5%)', y: 112},
    {x: 'Aventura(5%)', y: 961},
    {x: 'Anabelle(5%)', y: 15},
    {x: 'Tristeza(5%)', y: 16},
    {x: 'Felicidad(5%)', y: 13}
  ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Y'],
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
</script>