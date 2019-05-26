<?php 
$usuario = $this->session->userdata("usuario");//obtencion del usuario
if($usuario->usuario!="admin1"){//validacion de que sea el usuario admin1
        header('Location: '.base_url());
        //en caso de no serlo se manda al login, sin poder acceder a la pagina
    }
?>
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

require $_SERVER['DOCUMENT_ROOT'] . "/tienda/php_functions/functions_estadisticas.php";
?>
    <center><h4>Reporte generado del <?php echo $inicio[0].' '.$inicio[1].' al '.$final[0].' '.$final[1];?></h4></center>
<div class="row jumbotron">
    <button class="col-12 btn btn-primary">Sitio web</button>
    <?php if($estadistica1valor!=""): ?>
    <div class="card border-primary col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 1</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Fuente de obtención de usuarios</h5>
            <p class="card-text">
            <div id="e1" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
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
    <?php if($estadistica5valor!=""): ?>
    <div class="card border-success col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 5</div>
        <div class="card-body text-success">
            <h5 class="card-title">Idiomas que hablan</h5>
            <p class="card-text">
                <div id="e5" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica6valor!=""): ?>
    <div class="card border-success col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 6</div>
        <div class="card-body text-success">
            <h5 class="card-title">Sexo que tienen</h5>
            <p class="card-text">
                <div id="e6" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica7valor!=""): ?>
    <div class="card border-success col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 7</div>
        <div class="card-body text-success">
            <h5 class="card-title">Edad que tienen</h5>
            <p class="card-text">
                <div id="e7" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica8valor!=""): ?>
    <div class="card border-success col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 8</div>
        <div class="card-body text-success">
            <h5 class="card-title">Cuidad que son</h5>
            <p class="card-text">
                <div id="e8" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica9valor!=""): ?>
    <div class="card border-success col-sm-6 col-md-4 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 9</div>
        <div class="card-body text-success">
            <h5 class="card-title">Pais que son</h5>
            <p class="card-text">
                <div id="e9" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
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
        <?php if($estadistica12valor!=""): ?>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 12</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Productos mas visitados</h5>
            <p class="card-text">
                <div id="e12" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica13valor!=""): ?>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 13</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Productos mas comprados</h5>
            <p class="card-text">
                <div id="e13" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica14valor!=""): ?>
    <div class="card border-danger col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 14</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Categorias mas visitadas</h5>
            <p class="card-text">
                <div id="e14" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica15valor!=""): ?>
    <div class="card border-danger col-sm-6 col-md-6 col-lg-6 col-xl-3">
        <div class="card-header">Estadistica 15</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Categorias menos visitadas</h5>
            <p class="card-text">
                <div id="e15" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica16valor!=""): ?>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 16</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Productos menos visitados </h5>
            <p class="card-text">
                <div id="e16" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
        <?php if($estadistica17valor!=""): ?>
    <div class="card border-danger col-sm-12 col-md-12 col-lg-12 col-xl-6">
        <div class="card-header">Estadistica 17</div>
        <div class="card-body text-danger">
            <h5 class="card-title">Productos menos comprados</h5>
            <p class="card-text">
                <div id="e17" class="grafica"></div>
            </p>
        </div>
    </div>
        <?php endif; ?>
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
<?php 
require $_SERVER['DOCUMENT_ROOT'] . "/tienda/php_functions/functions_graficas.php";
?>