<script>
  <?php if($estadistica1valor!=""): ?>
Morris.Donut({
  element: 'e1',
  data: [
    <?php echo  $estadistica1valor;?>
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
<?php if($estadistica5valor!=""): ?>
Morris.Donut({
  element: 'e5',
  data: [
    <?php echo  $estadistica5valor;?>
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
<?php if($estadistica6valor!=""): ?>
Morris.Donut({
  element: 'e6',
  data: [
    <?php echo  $estadistica6valor;?>
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
<?php if($estadistica7valor!=""): ?>
Morris.Bar({
  element: 'e7',
  data: [
    <?php echo  $estadistica7valor;?>
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
<?php endif; ?>
<?php if($estadistica8valor!=""): ?>
Morris.Bar({
  element: 'e8',
  data: [
    <?php echo  $estadistica8valor;?>
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
<?php endif; ?>
<?php if($estadistica9valor!=""): ?>
Morris.Donut({
  element: 'e9',
  data: [
    <?php echo  $estadistica9valor;?>
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
<?php if($estadistica12valor!=""): ?>
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
<?php endif; ?>
<?php if($estadistica13valor!=""): ?>
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
<?php endif; ?>
<?php if($estadistica14valor!=""): ?>
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
<?php endif; ?>
<?php if($estadistica15valor!=""): ?>
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
<?php endif; ?>
<?php if($estadistica16valor!=""): ?>
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
<?php endif; ?>
<?php if($estadistica17valor!=""): ?>
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
<?php endif; ?>
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