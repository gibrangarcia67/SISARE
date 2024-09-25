<?php                    
include("conexionsql.php");
$e=$_GET["e"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $e; ?></title>
    
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
        <p><?php echo $e; ?></p>
        <img src="../icons/campana.png" alt="">
    </div>
    <div class="content">
        <div class="menu">
            <p><a href="../php/mostrarAlumnos.php?e=PROGRAMACIÓN">Programación</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=MECATRÓNICA">Mecatronica</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=TRANSFORMACIÓN DE PLÁSTICOS">Transformación de Plásticos</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=COMPONENTE BASICO Y PROPEDEUTICO">Curso propedeutico</a></p>
        </div>
        <main>
        <br>
        <div class="container-fluid px-4">
                <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                <?php echo $e; ?>
                            </div>
                <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            
                                            <th>Matricula</th>
                                            <th>Nombre Completo</th>
                                            <th>Grupo</th>
                                            <th>Genero </th>
                                            <th>Correo de Padre</th>
                                            <th>Correo de Madre</th>
                                
                                        </tr>
                                    </thead>
                                    
                                    <tbody>                       
				<?php
                    
					$sql="SELECT * FROM alumnos where especialidad = '$e' ";  
                    $result=mysqli_query($conexion,$sql);
                    while($mostrar=mysqli_fetch_array($result)){

                                                                  
                            ?>


<tr>
                    
						<td class="celdas_tablas"><a href="expediente.php?matricula=<?php echo $mostrar['matricula'] ?>"><?php echo $mostrar['matricula'] ?></a></td>
						<td class="celdas_tablas"><?php echo $mostrar['nombre'] ?></td>
                        <td class="celdas_tablas"><?php echo $mostrar['grupo'] ?></td>
                        <td class="celdas_tablas"><?php echo $mostrar['genero'] ?></td>
						<td class="celdas_tablas"><?php echo $mostrar['correo_p']?></td>
                        <td class="celdas_tablas"><?php echo $mostrar['correo_m'] ?></td>
                        

                    </tr>
      
<?php
                         } 
				?>
            

  
                            </div>
                            </div> </table> 
                            </div> </tbody>
        </main>
        </div>
                        </div>
       


    <!-- jQuery  -->
    <script src="../layouts/assets/js/jquery.min.js"></script>
    <script src="../layouts/assets/js/bootstrap.bundle.min.js"></script>
    <script src="../layouts/assets/js/theme.js"></script>
    <script src="../js/tables.js" crossorigin="anonymous"></script>?>
    <script src="../js/datatables-simple-demo.js"></script>?>
</body>
</html>