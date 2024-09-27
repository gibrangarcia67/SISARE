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
    <title>Citatorio</title>
    <link rel="stylesheet" href="../css/Citatorio.css">
</head>
<body>

    <div class="menu">
        <a href="" class="amenu">
            <img src="../icons/esquema-de-boton-circular-de-flecha-hacia-atras-izquierda.png" alt="" class="optionsmenu_img">
        </a>

        <div class="optionsmenu">
            <a href="" class="amenu">
                <img src="../icons/imprimir-contorno-del-boton.png" alt="" class="optionsmenu_img">
            </a>
            <a href="" class="amenu">
                <img src="../icons/cheque.png" alt="" class="optionsmenu_img">
            </a>
        </div>
    </div>
    
    <div class="main">
        <div class="main_box">
            <img src="../img/EncabezadoReporte.jpg" alt="" class="main_box_headerimg">
            
            <p class="bold">CITATORIO</p>
            
            <p class="bold-2" style="margin: 2em 0;">SR. (A) PADRE DE FAMILIA O TUTOR</p>
            
            <p class="bold-2 space" style="margin: 2em 0;">P R E S E N T E</p>
            
            <div class="center" style="word-spacing:.79em;">Con la finalidad de tratar asuntos relacionados con la educación de su hija (o)</div>
            <div class="center" style="word-spacing: .52em;"><input type="text" class="textin" style="width: 18em;" value="<?php echo $mostrar['nombre'] ?>"> quien cursa el semestre <input type="text" class="textin" style="width: 4em;" value="<?php echo $semestre ?>"> Por medio de este </div>
            <div class="center" style="word-spacing:.231em;">conducto me permito girarle el presente, para que tenga usted el bien de acudir a cita con </div>
            <div style="margin: .8em 0 .8em 0em;">el departamento de orientación el día <input type="text" class="textin" style="width: 2em;">/<input type="text" class="textin" style="width: 2em;">/<input type="text" class="textin" style="width: 2em;"> a las <input type="text" class="textin" style="width: 2em;">:<input type="text" class="textin" style="width: 2em;"> hrs.</div>
            
            <div class="center" style="word-spacing:.6em;margin-top: 3em;">Por la importancia a este llamado, le pedimos su puntualidad y asistencia; sin otro </div>
            <div style="word-spacing:.6em;">particular agradecemos su asistencia y reciba un cordial saludo.</div>
            
            <p class="bold-2 center" style="margin: 5em 0 0 0;">ATENTAMENTE</p>

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

            <img src="../img/PiePaginaReporte.png" alt="" class="main_box_headerimg">
            

        </div>
    </div>
</div>

</body>
</html>
<?php
                    }
?>