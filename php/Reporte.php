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
    <title>Reporte</title>
    <link rel="stylesheet" href="../css/Reporte.css">
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
            <form action="insertarR.php"method="POST" id="formReporte">
            <div class="date"> Cd. Victoria Tamaulipas<input type="number" class="indate" id="dia_e" name="dia_e" required>/<input type="number" class="indate" id="mes_e" name="mes_e" required>/<input type="number" class="indate" id="ano_e" name="ano_e" required></div>
            
            <p class="bold">Reporte</p>
            
            <div class="grade">

                <div class="opc"><input name="grade" type="radio" <?php if($mostrar['cantidad_r'] == 0 || $mostrar['cantidad_r'] == 3 || $mostrar['cantidad_r'] == 6 || $mostrar['cantidad_r'] == 9){ echo "checked"; } ?>>Primero</div>
                <div class="opc"><input name="grade" type="radio" <?php if($mostrar['cantidad_r'] == 1 || $mostrar['cantidad_r'] == 4 || $mostrar['cantidad_r'] == 7 || $mostrar['cantidad_r'] == 10){ echo "checked"; } ?>>Segundo</div>
                <div class="opc"><input name="grade" type="radio" <?php if($mostrar['cantidad_r'] == 2 || $mostrar['cantidad_r'] == 5 || $mostrar['cantidad_r'] == 8 || $mostrar['cantidad_r'] == 11){ echo "checked"; } ?>>Tercero</div>
                    </div>
            
            <p class="bold-2">SR. (A) PADRE DE FAMILIA O TUTOR</p>
            
            <p class="bold-2 space">P R E S E N T E</p>
            
            <div>Por este medio se le informa que su hija (o)    <input type="text" class="textin" style="width: 25em;" value="<?php echo $mostrar['nombre'] ?>" id="nombre" name="nombre" required>     del grupo     <input type="text" class="textin" style="width: 2em;" value="<?php echo $semestre ?>" id="semestre" name="semestre" required> <input type="text" class="textin" style="width: 2em;" value="<?php echo $grupo ?>" id="grupo" name="grupo" required>  ha</div>
            <div>sido reportada (o) por presentar la o las situaciones señaladas:</div>

            
            <div class="sit">
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="No trae tarea" required>No trae tarea.</div>
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="Faltarle al respeto a un maestro, prefecto o personal administrativo" required>Faltarle al respeto a un maestro, prefecto o personal administrativo.</div>
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="Salirse del salón de clases, sin autorización" required>Salirse del salón de clases, sin autorización.</div>
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="Faltarle al respeto a sus compañeros" required>Faltarle al respeto a sus compañeros.</div>
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="No trabaja en el aula" required>No trabaja en el aula.</div>
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="Destruir el mobiliario o causar daños en el edificio escolar" required>Destruir el mobiliario o causar daños en el edificio escolar.</div>
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="Por no cumplir con el uniforme completo (zapatos) ni el recado del padre de familia" required>Por no cumplir con el uniforme completo (zapatos) ni el recado del padre de familia.</div>
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="No trae corte de cabello natural" required>No trae corte de cabello natural.</div>
            <div class="opc2"><input name="sit" type="radio" name="motivo" value="Otros" required>Otros.</div>

            </div>
            <input type="number" value="<?php echo $matricula ?>" hidden name="matricula">
            </form>
            <textarea name="motivo" id="" cols="30" rows="10" class="textarea"></textarea>
            
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
<script type="text/javascript">

var fechaActual = new Date();


var dia = fechaActual.getDate();
var mes = fechaActual.getMonth() + 1;
var ano = fechaActual.getFullYear();

document.getElementById("dia").value = dia;
document.getElementById("mes").value = mes;
document.getElementById("ano").value = ano;

document.getElementById("enviarFormulario").addEventListener("click", function(event) {
            event.preventDefault();  // Evitar la acción por defecto del enlace
            document.getElementById("miFormulario").submit();  // Enviar el formulario
        });

</script> 