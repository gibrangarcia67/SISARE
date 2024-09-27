    <?php
    include("conexionsql.php");
    $matricula=$_GET["matricula"];
    $sql="SELECT * FROM alumnos WHERE matricula = '$matricula'";

    $result=mysqli_query($conexion,$sql);
                        while($mostrar=mysqli_fetch_array($result)){
                            $semestre = substr($mostrar['grupo'], 0, 1);
                            $grupo = substr($mostrar['grupo'], 1);
    ?>      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Suspension</title>
    <link rel="stylesheet" href="../css/Suspension.css">
</head>
<body>
    
    <div class="menu">
        <a href="expediente.php?matricula=<?php echo $matricula ?>" class="amenu">
            <img src="../icons/esquema-de-boton-circular-de-flecha-hacia-atras-izquierda.png" alt="" class="optionsmenu_img">
        </a>

        <div class="optionsmenu">
            <a href="" class="amenu">
                <img src="../icons/imprimir-contorno-del-boton.png" alt="" class="optionsmenu_img">
            </a>
            <a href="#" class="amenu" id="enviarFormulario">
                <img src="../icons/cheque.png" alt="" class="optionsmenu_img">
            </a>
        </div>
    </div>

    <div class="main">
        <div class="main_box">
            <img src="../img/EncabezadoReporte.jpg" alt="" class="main_box_headerimg">
            <form action="insertarS.php"method="POST" id="formSuspension">
            <div class="date"> Cd. Victoria Tamaulipas<input type="number" class="indate" id="dia_e" name="dia_e" required>/<input type="number" class="indate" id="mes_e" name="mes_e" required>/<input type="number" class="indate" id="ano_e" name="ano_e" required></div>
            
            <p class="bold">SUSPENSIÓN</p>
            
            <p class="bold-2" style="margin: 3em 0 2em 0;">Centro de Bachillerato Tecnológico Industrial Y de Servicios No. 271</p>
            
            <p class="bold-2" style="margin: 2em 0;">CCT: 28DCT0271F</p>
            
            <div class="center" style="word-spacing: .17em;">Padre o madre de familia y/o tutor del alumna (o) <input type="text" class="textin" style="width: 22em;" value="<?php echo $mostrar['nombre'] ?>" id="nombre" name="nombre" required></div>
            
            <div class="center" style="word-spacing: .33em;">del grupo <input type="text" class="textin" style="width: 1.5em;" value="<?php echo $semestre ?>" id="semestre" name="semestre" required> <input type="text" class="textin" style="width: 1.5em;" value="<?php echo $grupo ?>" id="grupo" name="grupo" required> de la especialidad de <input type="text" class="textin" style="width: 15em;" value="<?php echo $mostrar['especialidad'] ?>" id="especialidad" name="especialidad" required>, por acumulación de</div>
            
            <div class="center" style="word-spacing: .31em;">reportes, y de faltar al reglamento escolar del CBTis No. 271 en los artículos 39, inciso 7, y </div>
            
            <div class="center" style="word-spacing: .35em;">acumulación de reportes del reglamento escolar ha sido suspendida (o) a partir del <input type="text" class="textin" style="width: 1.5em;" id="dia_i" name="dia_i" required> /</div>
            
            <div style="word-spacing: .35em;"><input type="text" class="textin" style="width: 1.5em;" id="mes_i" name="mes_i" required> / <input type="text" class="textin" style="width: 2.5em;" id="ano_i" name="ano_i" requiredd> y deberá regresar el día <input type="text" class="textin" style="width: 1.5em;" id="dia_f" name="dia_f" required> / <input type="text" class="textin" style="width: 1.5em;" id="mes_f" name="mes_f" required> / <input type="text" class="textin" style="width: 2.5em;" id="ano_f" name="ano_f" required>.</div>
            <input type="number" value="<?php echo $matricula ?>" hidden name="matricula">
        </form>

            <div class="box">
                <div class="content">
                    <div class="firmas">
                        RICARDO MURILLO ALFARO
                    <div class="bold-3">JEFE DE SERVICIOS ESCOLARES</div>
                </div>
                <div class="firmas">
                    ARMANDO REYES VIELMA
                    <div class="bold-3">RESPONSABLE DE LA OFICINA DE <br> ORIENTACIÓN</div>
                </div>
            </div>
            
            <div class="content">
                <div class="firmas">
                    <div class="bold-3">NOMBRE Y FIRMA DE ENTERADO <br> DEL PADRE O TUTOR</div>
                </div>
            </div>

            <div class="center" style="display: flex;flex-direction: column;gap: 1em;">
                <p class="bold-2">NOTA: FAVOR DE ANEXAR COPIA DE CREDENCIAL DE ELECTOR.  ¡GRACIAS!</p>
                
                <img src="../img/PiePaginaReporte.png" alt="" class="main_box_headerimg">
            </div>

            
            </div>
           

        </div>
    </div>
</div>

</body>
</html>
<?php
                    }
?>
<script type="text/javascript">

var fechaActual = new Date();


var dia = fechaActual.getDate();
var mes = fechaActual.getMonth() + 1;
var ano = fechaActual.getFullYear();

document.getElementById("dia_e").value = dia;
document.getElementById("mes_e").value = mes;
document.getElementById("ano_e").value = ano;

document.getElementById("enviarFormulario").addEventListener("click", function(event) {
            event.preventDefault();  // Evitar la acción por defecto del enlace
            document.getElementById("formSuspension").submit();  // Enviar el formulario
        });

</script> 