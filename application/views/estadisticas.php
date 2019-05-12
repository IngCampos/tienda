<center>
    <h1>Estadisticas</h1>
</center>
<div class="row">
    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
        Fecha y hora inicial<input type="datetime-local" name="f-inicial" value="<?php if(!isset($_POST['f-inicial'])) echo date('Y').'-'.date('m').'-01T00:00';  else echo $_POST['f-inicial'];?>" max="<?php echo date('Y').'-'.date('m').'-'.date('d').'T23:59';?>" required>
        Fecha y hora final<input type="datetime-local" name="f-final" value="<?php if(!isset($_POST['f-final'])) echo date('Y').'-'.date('m').'-'.date('d').'T'.date('H').':'.date('i'); else echo $_POST['f-final'];?>" max="<?php echo date('Y').'-'.date('m').'-'.date('d').'T23:59';?>" required>
        <input type="submit" value="Generar reporte">
    </form>
</div>
<?php if(isset($_POST['f-inicial']) && isset($_POST['f-final']) && $_POST['f-inicial']<$_POST['f-final']): ?>
<?php 	
$inicio = $_POST['f-inicial'];
$final = $_POST['f-final'];
?>
<div class="row">
    <div class='col-12'><h4>Reporte generado del <?php echo $inicio.' al '.$final;?></h4></div>
    <button class="col-12 btn btn-success">Sitio web</button>
    <div class="card border-success col-6">
        <div class="card-header">Estadistica 1</div>
        <div class="card-body text-success">
            <h5 class="card-title">Fuente de obtención de usuarios</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-success col-6">
        <div class="card-header">Estadistica 2</div>
        <div class="card-body text-success">
            <h5 class="card-title">Paginas mas visitadas</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-success col-6">
        <div class="card-header">Estadistica 3</div>
        <div class="card-body text-success">
            <h5 class="card-title">Dia y hora que se conectan los usuarios</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-success col-6">
        <div class="card-header">Estadistica 4</div>
        <div class="card-body text-success">
            <h5 class="card-title">Dispositivos con los que los usuarios se conectan</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
</div>
<div class="row">
    <button class="col-12 btn btn-primary">Usuarios</button>
    <div class="card border-primary col-6">
        <div class="card-header">Estadistica 5</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Idiomas que hablan</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-6">
        <div class="card-header">Estadistica 6</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Sexo que tienen</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-6">
        <div class="card-header">Estadistica 7</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Edad que tienen</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-6">
        <div class="card-header">Estadistica 8</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Pais que son</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-6">
        <div class="card-header">Estadistica 9</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Cuidad que son</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-6">
        <div class="card-header">Estadistica 10</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Sistemas Operativos que usan</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-primary col-6">
        <div class="card-header">Estadistica 11</div>
        <div class="card-body text-primary">
            <h5 class="card-title">Navegador que usan</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
</div>
<div class="row">
    <button class="col-12 btn btn-dark">Productos</button>
    <div class="card border-dark col-6">
        <div class="card-header">Estadistica 12</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Productos mas visitados</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-6">
        <div class="card-header">Estadistica 13</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Productos mas comprados</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-6">
        <div class="card-header">Estadistica 14</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Categorias mas visitadas</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-6">
        <div class="card-header">Estadistica 15</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Terminos mas buscados</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-6">
        <div class="card-header">Estadistica 16</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Productos menos visitados </h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-6">
        <div class="card-header">Estadistica 17</div>
        <div class="card-body text-dark">
            <h5 class="card-title">Productos menos comprados</h5>
            <p class="card-text">
                tabla
            </p>
        </div>
    </div>
    <div class="card border-dark col-6">
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
<div class="row">
    <div class='col-12'><h4>La fecha y hora inicial debe ser menor y no igual a la final.</div>
</div>
<?php endif; ?>