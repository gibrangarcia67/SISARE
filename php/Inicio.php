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
        <img src="../icons/menu.png" alt="">
        <p>Sistema de Seguimiento y Registro Administrativo Escolar</p>
        <img src="../icons/campana.png" alt="">
    </div>
    <div class="content">
        <div class="menu">
            <p><a href="../php/mostrarAlumnos.php?e=PROGRAMACIÓN">Programación</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=MECATRÓNICA">Mecatronica</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=TRANSFORMACIÓN DE PLÁSTICOS">Transformación de Plásticos</a></p>
            <p><a href="../php/mostrarAlumnos.php?e=COMPONENTE BASICO Y PROPEDEUTICO">Curso propedeutico</a></p>
            <p><a href="../python/script.py">Actualizar datos</a></p>
        </div>

        <div class="section">
            <div class="box">
                <div class="col-xl-6">
                    <div class="card">
                        <div class="card-body">
            
                            <h4 class="card-title">Estadísticas de incidencias Programación (MUJERES)</h4>
                            <p class="card-subtitle mb-4">Example of morris bar chart.</p>
    
                            <div id="morris-bar-example" class="morris-chart"></div>
            
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
                <!-- end row-->
                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                
                                <h4 class="card-title">Estadísticas de incidencias Programación (HOMBRES)</h4>
                                <p class="card-subtitle mb-4">Example of morris bar chart.</p>
        
                                <div id="morris-bar-example2" class="morris-chart"></div>
                
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
            <div class="box">
                <div class="col-xl-6">
                    <div class="card">
                        <div class="card-body">
            
                            <h4 class="card-title">Estadísticas de incidencias Mecatrónica (MUJERES)</h4>
                            <p class="card-subtitle mb-4">Example of morris bar chart.</p>
    
                            <div id="morris-bar-example3" class="morris-chart"></div>
            
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
                <!-- end row-->
                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                
                                <h4 class="card-title">Estadísticas de incidencias Mecatrónica (HOMBRES)</h4>
                                <p class="card-subtitle mb-4">Example of morris bar chart.</p>
        
                                <div id="morris-bar-example4" class="morris-chart"></div>
                
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
                <!-- end row-->
            <div class="box">
                <div class="col-xl-6">
                    <div class="card">
                        <div class="card-body">
            
                            <h4 class="card-title">Estadísticas de incidencias Transformación de Plásticos(MUJERES)</h4>
                            <p class="card-subtitle mb-4">Example of morris bar chart.</p>
    
                            <div id="morris-bar-example5" class="morris-chart"></div>
            
                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
                <!-- end row-->
                    <div class="col-xl-6">
                        <div class="card">
                            <div class="card-body">
                
                                <h4 class="card-title">Estadísticas de incidencias Transformación de Plásticos(HOMBRES)</h4>
                                <p class="card-subtitle mb-4">Example of morris bar chart.</p>
        
                                <div id="morris-bar-example6" class="morris-chart"></div>
                
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
                <!-- end row-->
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
      barColors: ['#898989', '#8b3535'],
      data: [{
        y: '20133',
        a: 80,
        b: 100
      },
      {
        y: '2014',
        a: 110,
        b: 130
      },
      {
        y: '2015',
        a: 90,
        b: 110
      },
      {
        y: '2016',
        a: 120,
        b: 140
      },
      {
        y: '2017',
        a: 110,
        b: 125
      },
      {
        y: '2018',
        a: 170,
        b: 190
      },
      {
        y: '2019',
        a: 120,
        b: 140
      }
    ],
      xkey: 'y',
      ykeys: ['a', 'b'],
      hideHover: 'auto',
      gridLineColor: '#eef0f2',
      resize: true,
      barSizeRatio: 0.4,
      labels: ['Series A', 'Series B']
    });
  if ($("#morris-bar-example2").length) {
    Morris.Bar({
      element: 'morris-bar-example2',
      barColors: ['#898989', '#8b3535'],
      data: [{
        y: '20133',
        a: 80,
        b: 100
      },
      {
        y: '2014',
        a: 110,
        b: 130
      },
      {
        y: '2015',
        a: 90,
        b: 110
      },
      {
        y: '2016',
        a: 120,
        b: 140
      },
      {
        y: '2017',
        a: 110,
        b: 125
      },
      {
        y: '2018',
        a: 170,
        b: 190
      },
      {
        y: '2019',
        a: 120,
        b: 140
      }
    ],
      xkey: 'y',
      ykeys: ['a', 'b'],
      hideHover: 'auto',
      gridLineColor: '#eef0f2',
      resize: true,
      barSizeRatio: 0.4,
      labels: ['Series A', 'Series B']
    });
  if ($("#morris-bar-example3").length) {
    Morris.Bar({
      element: 'morris-bar-example3',
      barColors: ['#898989', '#8b3535'],
      data: [{
        y: '20133',
        a: 80,
        b: 100
      },
      {
        y: '2014',
        a: 110,
        b: 130
      },
      {
        y: '2015',
        a: 90,
        b: 110
      },
      {
        y: '2016',
        a: 120,
        b: 140
      },
      {
        y: '2017',
        a: 110,
        b: 125
      },
      {
        y: '2018',
        a: 170,
        b: 190
      },
      {
        y: '2019',
        a: 120,
        b: 140
      }
    ],
      xkey: 'y',
      ykeys: ['a', 'b'],
      hideHover: 'auto',
      gridLineColor: '#eef0f2',
      resize: true,
      barSizeRatio: 0.4,
      labels: ['Series A', 'Series B']
    });
  if ($("#morris-bar-example4").length) {
    Morris.Bar({
      element: 'morris-bar-example4',
      barColors: ['#898989', '#8b3535'],
      data: [{
        y: '20133',
        a: 80,
        b: 100
      },
      {
        y: '2014',
        a: 110,
        b: 130
      },
      {
        y: '2015',
        a: 90,
        b: 110
      },
      {
        y: '2016',
        a: 120,
        b: 140
      },
      {
        y: '2017',
        a: 110,
        b: 125
      },
      {
        y: '2018',
        a: 170,
        b: 190
      },
      {
        y: '2019',
        a: 120,
        b: 140
      }
    ],
      xkey: 'y',
      ykeys: ['a', 'b'],
      hideHover: 'auto',
      gridLineColor: '#eef0f2',
      resize: true,
      barSizeRatio: 0.4,
      labels: ['Series A', 'Series B']
    });
  if ($("#morris-bar-example5").length) {
    Morris.Bar({
      element: 'morris-bar-example5',
      barColors: ['#898989', '#8b3535'],
      data: [{
        y: '20133',
        a: 80,
        b: 100
      },
      {
        y: '2014',
        a: 110,
        b: 130
      },
      {
        y: '2015',
        a: 90,
        b: 110
      },
      {
        y: '2016',
        a: 120,
        b: 140
      },
      {
        y: '2017',
        a: 110,
        b: 125
      },
      {
        y: '2018',
        a: 170,
        b: 190
      },
      {
        y: '2019',
        a: 120,
        b: 140
      }
    ],
      xkey: 'y',
      ykeys: ['a', 'b'],
      hideHover: 'auto',
      gridLineColor: '#eef0f2',
      resize: true,
      barSizeRatio: 0.4,
      labels: ['Series A', 'Series B']
    });
  if ($("#morris-bar-example6").length) {
    Morris.Bar({
      element: 'morris-bar-example6',
      barColors: ['#898989', '#8b3535'],
      data: [{
        y: '20133',
        a: 80,
        b: 100
      },
      {
        y: '2014',
        a: 110,
        b: 130
      },
      {
        y: '2015',
        a: 90,
        b: 110
      },
      {
        y: '2016',
        a: 120,
        b: 140
      },
      {
        y: '2017',
        a: 110,
        b: 125
      },
      {
        y: '2018',
        a: 170,
        b: 190
      },
      {
        y: '2019',
        a: 120,
        b: 140
      }
    ],
      xkey: 'y',
      ykeys: ['a', 'b'],
      hideHover: 'auto',
      gridLineColor: '#eef0f2',
      resize: true,
      barSizeRatio: 0.4,
      labels: ['Series A', 'Series B']
    });
    function update() {
        nReloads++;
        graph.setData(data(5 * nReloads));
        $('#reloadStatus').text(nReloads + ' reloads');
    }
    setInterval(update, 100);
  }
}
}
}
}
}
});

    </script>

    <script src="../layouts/assets/js/theme.js"></script>
</body>
</html>