<?php 
$usuario = $this->session->userdata("usuario");//obtencion del usuario
if($usuario->usuario!="admin1"){//validacion de que sea el usuario admin1
        header('Location: '.base_url());
        //en caso de no serlo se manda al login, sin poder acceder a la pagina
    }
?>
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
    <button class="col-12 btn btn-success">Sitio web</button>
    <div class="card border-success col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 1</div>
        <div class="card-body text-success">
            <h5 class="card-title">Fuente de obtención de usuarios</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-success col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 2</div>
        <div class="card-body text-success">
            <h5 class="card-title">Paginas mas visitadas</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-success col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 3</div>
        <div class="card-body text-success">
            <h5 class="card-title">Dia y hora que se conectan los usuarios</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-success col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 4</div>
        <div class="card-body text-success">
            <h5 class="card-title">Dispositivos con los que los usuarios se conectan</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
<button class="col-12 btn btn-primary">Usuarios</button>
    <div class="card border-primary col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 5</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Idiomas que hablan</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 6</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Sexo que tienen</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 7</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Edad que tienen</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 8</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Pais que son</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 9</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Cuidad que son</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 10</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Sistemas Operativos que usan</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 11</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Navegador que usan</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <button class="col-12 btn btn-dark">Productos</button>
    <div class="card border-dark col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 12</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Productos mas visitados</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 13</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Productos mas comprados</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 14</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Categorias mas visitadas</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 15</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Terminos mas buscados</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 16</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Productos menos visitados </h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 17</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Productos menos comprados</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-sm-12 col-md-6 col-lg-4 col-xl-3">
        <div class="card-header">Estadistica 18</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Categorias menos visitadas</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
</div>
<?php else:?>
<div class="row jumbotron">
    <div class='col-12'><h4>La fecha y hora inicial debe ser menor y no igual a la final.</div>
</div>
<?php endif; ?>