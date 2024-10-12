<?php                    
include("conexionsql.php");
$matricula=$_GET["matricula"];
$sql="SELECT * FROM alumnos where matricula = '$matricula' ";  
$result=mysqli_query($conexion,$sql); $mostrar= mysqli_fetch_array($result);             
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $matricula; ?></title>
    
    <link rel="stylesheet" href="../css/inicio.css">
    <link rel="stylesheet" href="../css/datatables.css">

     <!-- App css -->
     <link href="../layouts/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
     <link href="../layouts/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
     <link href="../layouts/assets/css/theme.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <div class="header">
        <img src="../icons/menu.png" alt="">
        <p><b><?php echo $mostrar['nombre']; ?></b></p>
        <img src="../icons/campana.png" alt="">
    </div>
    <div class="content">
        <div class="menu">
            <p><a href="../php/mostrarAlumnos.php?e=PROGRAMACIÓN">Programación</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=MECATRÓNICA">Mecatronica</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=TRANSFORMACIÓN DE PLÁSTICOS">Transformación de Plásticos</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=COMPONENTE BASICO Y PROPEDEUTICO">Curso propedeutico</a></p>
        </div>
        <main style="width: 85vw; overflow: auto;">
        
        <br>
        <?php 
        if($mostrar['cantidad_r']!=0 || $mostrar['cantidad_c']!=0 || $mostrar['cantidad_s']!=0 || $mostrar['cantidad_cc']!=0){
        if($mostrar['cantidad_r']==0){}else{ ?>
        
        <div class="container-fluid px-4">
            <div class="card mb-4">
                <div class="card-header">
                    
                    <b>Reportes</b>
                </div>
                <div class="card-body">
                    <table id="datatablesSimple" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Folio</th>
                                <th>Fecha</th>                                
                                <th>Motivo</th>
                                <th>Eliminar</th>
                                

                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT * FROM reportes WHERE matricula='$matricula'";
                            $result = mysqli_query($conexion, $sql);

                            while ($row = mysqli_fetch_array($result)) {
                            ?>
                                <tr>
                                    <td> <?php echo $row['id'];?></td>
                                    <td><?php echo $row['dia_e'] . "/" . $row['mes_e']. "/". $row['mes_e'];?></td>
                                    <td><?php echo $row['motivo'] ?></td>
                                    <td> <a class="eliminar" href="eliminarR.php?id=<?php echo $row['id']; ?>&matricula=<?php echo $matricula; ?>" ><center><img src="../icons/borrar.png" width="40px"></center></a></td>
                                
                                </tr>
                            <?php
                            $id_reporte=$row['id'];
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
<?php } 
    if($mostrar['cantidad_c']==0){}else{
    ?>
    <div class="container-fluid px-4">
            <div class="card mb-4">
                <div class="card-header">
                    
                    <b>Citatorios</b>
                </div>
                <div class="card-body">
                    <table id="datatablesSimple" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Folio</th>
                                <th>Fecha de Emision</th>  
                                <th>Fecha de Cita</th> 
                                <th>Eliminar</th> 


                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT * FROM citatorios WHERE matricula='$matricula'";
                            $result = mysqli_query($conexion, $sql);

                            while ($row = mysqli_fetch_array($result)) {
                            ?>
                                <tr>
                                    <td> <?php echo $row['id'];?></td>
                                    <td><?php echo $row['dia_e'] . "/" . $row['mes_e']. "/". $row['ano_e'] ?></td>
                                    <td><?php echo $row['dia_c'] . "/" . $row['mes_c']. "/". $row['ano_c'] ?></td>
                                    <td> <a class="eliminar" href="eliminarC.php?id=<?php echo $row['id']; ?>&matricula=<?php echo $matricula; ?>" ><center><img src="../icons/borrar.png" width="40px"></center></a></td>
                                </tr>
                            <?php
                            $id_citatorio=$row['id'];
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <?php } 
    if($mostrar['cantidad_s']==0){}else{
    ?>
    <div class="container-fluid px-4">
            <div class="card mb-4">
                <div class="card-header">
                    
                    <b>Suspensiones</b>
                </div>
                <div class="card-body">
                    <table id="datatablesSimple" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Folio</th>
                                <th>Fecha Emision</th>
                                <th>Especialidad</th>
                                <th>Grupo</th>
                                <th>Fecha Inicio</th>                               
                                <th>Fecha Fin</th> 
                                <th>Eliminar</th>
                                 
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT * FROM suspensiones WHERE matricula='$matricula'";
                            $result = mysqli_query($conexion, $sql);

                            while ($row = mysqli_fetch_array($result)) {
                            ?>
                                <tr>
                                <td> <?php echo $row['id'];?></td>
                                <td><?php echo $row['dia_e'] . "/" . $row['mes_e']. "/". $row['mes_e'] ?></td>
                                    <td><?php echo $row['especialidad'] ?></td>
                                    <td><?php echo $row['grupo'] ?></td>
                                    <td><?php echo $row['dia_i'] . "/" . $row['mes_i']. "/". $row['mes_i'] ?></td>
                                    <td><?php echo $row['dia_f'] . "/" . $row['mes_f']. "/". $row['mes_f'] ?></td>
                                    <td> <a class="eliminar" href="eliminarS.php?id=<?php echo $row['id']; ?>&matricula=<?php echo $matricula; ?>" ><center><img src="../icons/borrar.png" width="40px"></center></a></td>
                                </tr>
                            <?php
                            $id_suspension=$row['id'];
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <?php } 
    if($mostrar['cantidad_cc']==0){}else{
    ?>
    <div class="container-fluid px-4">
            <div class="card mb-4">
                <div class="card-header">
                    
                    <b>Carta Compromiso</b>
                </div>
                <div class="card-body">
                    <table id="datatablesSimple" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Folio</th>
                                <th>Fecha</th>
                                <th>Tutor</th>  
                                <th>Eliminar</th>                             
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT * FROM cartacompromiso WHERE matricula='$matricula'";
                            $result = mysqli_query($conexion, $sql);

                            while ($row = mysqli_fetch_array($result)) {
                            ?>
                                <tr>
                                    <td> <?php echo $row['Id_carta'];?></td>
                                    <td><?php echo $row['dia_e'] . "/" . $row['mes_e']. "/". $row['mes_e']; ?></td>
                                    <td><?php echo $row['tutor']; ?></td>
                                    <td> <a class="eliminar" href="eliminarCC.php?id=<?php echo $row['Id_carta']; ?>&matricula=<?php echo $matricula; ?>" ><center><img src="../icons/borrar.png" width="40px"></center></a></td>
                                </tr    
                            <?php
                            $id_carta=$row['Id_carta'];
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <?php } 
        }else{
            ?>
            <center><p>No hay registros para este alumno</p></center>
            <?php
        }
    ?>
    <br><br>
    <div class="container-fluid px-4">
            <div class="card mb-4">
                <div class="card-header">
                    
                    <?php
                    $sql = "SELECT * FROM alumnos WHERE matricula = '$matricula'";
                    $result = mysqli_query($conexion, $sql);

                    while ($mostrar = mysqli_fetch_array($result)) {
                    ?>
                    <b><?php echo $mostrar['matricula'], "- ", $mostrar['nombre']; ?></b>
                </div>
                <div class="card-body">
                    <table id="datatablesSimple" class="table table-bordered">
                        <thead> 
                            <tr>
                                <th><center>Reporte </center></th>
                                <th><center>Citatorio </center></th>
                                <th><center>Suspension </center></th>
                                <th><center>Carta Compromiso </center></th>
                            </tr>
                        </thead>
                            <tr>
                                <td class="celdas_tablas"><a href="Reporte.php?matricula=<?php echo $matricula; ?>"><center><img src="../img/agregar.png" width="40px"></center></a></td>
                                <td class="celdas_tablas"><a href="Citatorio.php?matricula=<?php echo $matricula; ?>"><center><img src="../img/agregar.png" width="40px"></center></a></td>
                                <td class="celdas_tablas"><a href="Suspension.php?matricula=<?php echo $matricula; ?>"><center><img src="../img/agregar.png" width="40px"></center></a></td>
                                <td class="celdas_tablas"><a href="Carta_compromiso.php?matricula=<?php echo $matricula; ?>"><center><img src="../img/agregar.png" width="40px"></center></a></td>                            
                            </tr>
                            <?php
                            }
                            ?>
                        
                    </table>
                </div>
            </div>
        </div>
        </main>
        </div>
                        </div>
       


    <!-- jQuery  -->
    <script type="text/javascript"> 
    const enlacesEliminar = document.querySelectorAll('.eliminar');

// Añade el mismo evento de confirmación a todos los enlaces seleccionados
enlacesEliminar.forEach(enlace => {
  enlace.addEventListener('click', function(event) {
    // Evita la acción predeterminada del enlace
    event.preventDefault();
    
    // Mostrar la alerta de confirmación
    const confirmacion = confirm("¿Estás seguro de que deseas eliminar este elemento?");

    if (confirmacion) {  
      // Si el usuario confirma, redirige a la URL del enlace
      window.location.href = this.href;
    } else {
      alert("Acción cancelada.");
    }
  });
});
    </script>
    <script src="../layouts/assets/js/jquery.min.js"></script>
    <script src="../layouts/assets/js/bootstrap.bundle.min.js"></script>
    <script src="../layouts/assets/js/theme.js"></script>
    <script src="../js/tables.js" crossorigin="anonymous"></script>?>
    <script src="../js/datatables-simple-demo.js"></script>?>
</body>
</html>