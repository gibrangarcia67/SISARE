<?php                    
include("conexionsql.php");

<<<<<<< HEAD
// $sql = "SELECT COUNT(*) AS total FROM `reportes`";
$sql_P_M = "SELECT SUM(cantidad_r) AS Total FROM `alumnos` WHERE genero = 'M' AND especialidad = 'PROGRAMACIÓN'";
$sql_P_H = "SELECT SUM(cantidad_r) AS Total FROM `alumnos` WHERE genero = 'H' AND especialidad = 'PROGRAMACIÓN'";
$result_P_M=mysqli_query($conexion,$sql_P_M);
$result_P_H=mysqli_query($conexion,$sql_P_H);
$row_P_M = $result_P_M -> fetch_assoc();
$row_P_H = $result_P_H -> fetch_assoc();

$sql_M_M = "SELECT SUM(cantidad_r) AS Total FROM `alumnos` WHERE genero = 'M' AND especialidad = 'MECATRÓNICA'";
$sql_M_H = "SELECT SUM(cantidad_r) AS Total FROM `alumnos` WHERE genero = 'H' AND especialidad = 'MECATRÓNICA'";
$result_M_M=mysqli_query($conexion,$sql_M_M);
$result_M_H=mysqli_query($conexion,$sql_M_H);
$row_M_M = $result_M_M -> fetch_assoc();
$row_M_H = $result_M_H -> fetch_assoc();


$sql_T_M = "SELECT SUM(cantidad_r) AS Total FROM `alumnos` WHERE genero = 'M' AND especialidad = 'TRANSFORMACIÓN DE PLÁSTICOS'";
$sql_T_H = "SELECT SUM(cantidad_r) AS Total FROM `alumnos` WHERE genero = 'H' AND especialidad = 'TRANSFORMACIÓN DE PLÁSTICOS'";
$result_T_M=mysqli_query($conexion,$sql_T_M);
$result_T_H=mysqli_query($conexion,$sql_T_H);
$row_T_M = $result_T_M -> fetch_assoc();
$row_T_H = $result_T_H -> fetch_assoc();

$sql_C_M = "SELECT SUM(cantidad_r) AS Total FROM `alumnos` WHERE genero = 'M' AND especialidad = 'COMPONENTE BASICO Y PROPEDEUTICO'";
$sql_C_H = "SELECT SUM(cantidad_r) AS Total FROM `alumnos` WHERE genero = 'H' AND especialidad = 'COMPONENTE BASICO Y PROPEDEUTICO'";
$result_C_M=mysqli_query($conexion,$sql_C_M);
$result_C_H=mysqli_query($conexion,$sql_C_H);
$row_C_M = $result_C_M -> fetch_assoc();
$row_C_H = $result_C_H -> fetch_assoc();



// echo $row['Total'];

// if($result){
//   echo "<pre>";
//   echo print_r($result);
//   echo "</pre>";
// }


=======
$sql = "SELECT COUNT(*) AS total FROM `reportes`";
$result=mysqli_query($conexion,$sql);

if($result){
echo "<pre>";
echo print_r($result);
echo "</pre>";
}
>>>>>>> 675f500e31ae0bef66dfa4a6126633e9ec7aa2dc
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Seguimiento y Registro Administrativo Escolar</title>
    
    <link rel="stylesheet" href="../css/inicio.css">

     <!-- App css -->
     <link href="../layouts/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
     <link href="../layouts/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
     <link href="../layouts/assets/css/theme.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <div class="header">
        <!-- <img src="../icons/menu.png" alt=""> -->
        <p>Sistema de Seguimiento y Registro Administrativo Escolar</p>
        <!-- <img src="../icons/campana.png" alt=""> -->
    </div>
    <div class="content">
        <div class="menu">
            <p><a href="../">Inicio</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=PROGRAMACIÓN">Programación</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=MECATRÓNICA">Mecatronica</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=TRANSFORMACIÓN DE PLÁSTICOS">Transformación de Plásticos</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=COMPONENTE BASICO Y PROPEDEUTICO">Curso propedeutico</a></p>
            <p><a href="../php/Ejecutar.php">Actualizar datos</a></p>
            <p><a href="../php/MUERTE.php">Eliminar Generación</a></p>
        </div>

        <div class="section">
            <div class="box">
                <div class="col-xl-12" style="height: 80vh;">
                    <div class="card" style="height: 80vh;">
                        <div class="card-body" style="height: 80vh;">
            
                            <h4 class="card-title">Estadísticas de incidencias Programación (MUJERES)</h4>
                            <p class="card-subtitle mb-4">Example of morris bar chart.</p>
    
                            <div id="morris-bar-example" class="morris-chart" style="height: 60vh;"></div>
            
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
              </div>
        </div>
    </div>
</div>

    <!-- jQuery  -->
    <script src="../layouts/assets/js/jquery.min.js"></script>
    <script src="../layouts/assets/js/bootstrap.bundle.min.js"></script>
    <script src="../layouts/assets/js/waves.js"></script>
    <script src="../layouts/assets/js/simplebar.min.js"></script>

    <!-- Morris Js-->
    <script src="../layouts/plugins/morris-js/morris.min.js"></script>
     
    <!-- Raphael Js-->
    <script src="../layouts/plugins/raphael/raphael.min.js"></script>

    <!-- Morris Custom Js -->
    <script>

/*
 Template Name: Xeloro - Admin & Dashboard Template
 Author: Myra Studio
 File: Morris
*/

$(function() {
  'use strict';
  if ($("#morris-bar-example").length) {
    Morris.Bar({
      element: 'morris-bar-example',
      barColors: ['#8b3535','#0066FF'],
      data: [{
<<<<<<< HEAD
        y: 'PROGRAMACIÓN',
        a: <?php echo $row_P_M['Total']; ?>,
        b: <?php echo $row_P_H['Total']; ?>,
=======
        y: '20133',
        a: <?php echo $v ?>,
        b: 100
>>>>>>> 675f500e31ae0bef66dfa4a6126633e9ec7aa2dc
      },
      {
        y: 'MECATRÓNICA',
        a: <?php echo $row_M_M['Total']; ?>,
        b: <?php echo $row_M_H['Total']; ?>,
      },
      {
        y: 'TRANSFORMA...',
        a: <?php echo $row_T_M['Total']; ?>,
        b: <?php echo $row_T_H['Total']; ?>,
      },
      {
        y: 'COMPONENTE BASICO Y PROPEDEUTICO',
        a: <?php echo $row_C_M['Total']; ?>,
        b: <?php echo $row_C_H['Total']; ?>,
      }
    ],
      xkey: 'y',
      ykeys: ['a','b'],
      hideHover: 'auto',
      gridLineColor: '#eef0f2',
      resize: true,
      barSizeRatio: 0.4,
      labels: ['MUJERES','HOMBRES']
    });
  
    function update() {
        nReloads++;
        graph.setData(data(5 * nReloads));
        $('#reloadStatus').text(nReloads + ' reloads');
    }
    setInterval(update, 100);
  }
}

);



    </script>

    <script src="../layouts/assets/js/theme.js"></script>
</body>
</html>