<?php
include("conexionsql.php");
$matricula=$_GET["matricula"];
$sql="SELECT * FROM alumnos WHERE matricula = '$matricula'";

$result=mysqli_query($conexion,$sql);
                    while($mostrar=mysqli_fetch_array($result)){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte</title>
    <link rel="stylesheet" href="../css/Reporte.css">
</head>
<body>
    
    <div class="main">
        <div class="main_box">
            <img src="../img/EncabezadoReporte.jpg" alt="" class="main_box_headerimg">
            
            <div class="date"> Cd. Victoria Tamaulipas<input type="number" class="indate">/<input type="number" class="indate">/<input type="number" class="indate"></div>
            
            <p class="bold">Reporte</p>
            
            <div class="grade">
                <div class="opc"><input name="grade" type="radio">Primero</div>
                <div class="opc"><input name="grade" type="radio">Segundo</div>
                <div class="opc"><input name="grade" type="radio">Tercero</div>
            </div>
            
            <p class="bold-2">SR. (A) PADRE DE FAMILIA O TUTOR</p>
            
            <p class="bold-2 space">P R E S E N T E</p>
            
            <div>Por este medio se le informa que su hija (o)    <input type="text" class="textin" style="width: 25em;" value="<?php echo $mostrar['nombre'] ?>">     del grupo     <input type="text" class="textin" style="width: 2em;" value="<?php echo $mostrar['grupo'] ?>">  ha</div>
            <div>sido reportada (o) por presentar la o las situaciones señaladas:</div>
            
            <div class="sit">
                <div class="opc2"><input name="sit" type="radio">No trae tarea.</div>
                <div class="opc2"><input name="sit" type="radio">Faltarle al respeto a un maestro, prefecto o personal administrativo.</div>
                <div class="opc2"><input name="sit" type="radio">Salirse del salón de clases, sin autorización.</div>
                <div class="opc2"><input name="sit" type="radio">Faltarle al respeto a sus compañeros.</div>
                <div class="opc2"><input name="sit" type="radio">No trabajar en el aula.</div>
                <div class="opc2"><input name="sit" type="radio">Destruir el mobiliario o causar daños en el edificio escolar.</div>
                <div class="opc2"><input name="sit" type="radio">Por no cumplir con el uniforme completo (zapatos) ni el recado del padre de familia.</div>
                <div class="opc2"><input name="sit" type="radio">No trae corte de cabello natural.</div>
                <div class="opc2"><input name="sit" type="radio">Otros.</div>
            </div>
            
            <textarea name="" id="" cols="30" rows="10" class="textarea"></textarea>
            
            <div>Por lo que le solicitamos su apoyo para tratar asunto con su hija (o) y dar la solución a la problemática enfrentada.</div>
            
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
            
            <div class="content tr">
                <div class="firmas">
                    <div class="bold-3">NOMBRE Y FIRMA DE QUIEN REPORTA <br> MAESTRA (O)</div>
                </div>
                <div class="firmas">
                    <div class="bold-3">NOMBRE Y FIRMA DE ENTERADO DEL PADRE O <br> TUTOR</div>
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