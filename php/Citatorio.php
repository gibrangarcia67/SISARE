<?php
include("conexionsql.php");
$matricula=$_GET["matricula"];
$sql="SELECT * FROM alumnos WHERE matricula = '$matricula'";

$result=mysqli_query($conexion,$sql);
                    while($mostrar=mysqli_fetch_array($result)){
                        $semestre = substr($mostrar['grupo'], 0, 1);
                        $grupo = substr($mostrar['grupo'], 1);
                        $genero = $mostrar['genero'];
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
            
            <p class="bold">CITATORIO</p>
            
            <p class="bold-2" style="margin: 2em 0;">SR. (A) PADRE DE FAMILIA O TUTOR</p>
            
            <p class="bold-2 space" style="margin: 2em 0;">P R E S E N T E</p>
            
            <div class="center" style="word-spacing:.79em;">Con la finalidad de tratar asuntos relacionados con la educación de su hija (o)</div>
            <form action="insertarC.php" method="post" id="formCitatorio">
            <div class="center" style="word-spacing: .07em;"><input type="text" class="textin" style="width: 22em;" name="nombre" id="nombre" value="<?php echo $mostrar['nombre'] ?>" required readonly> quien cursa el semestre <input type="text" class="textin" style="width: 4em;" name="semestre" id="semestre" value="<?php echo $semestre ?>" required> Por medio de este </div>
            <div class="center" style="word-spacing:.231em;">conducto me permito girarle el presente, para que tenga usted el bien de acudir a cita con </div>
            <div style="margin: .8em 0 .8em 0em;">el departamento de orientación el día <input type="text" class="textin" style="width: 2em;" name="dia_c" id="dia_c" required>/<input type="text" class="textin" style="width: 2em;" name="mes_c" id="mes_c" required>/<input type="text" class="textin" style="width: 2em;" name="ano_c" id="ano_c" required> a las <input type="text" class="textin" style="width: 2em;" name="hora_c" id="hora_c" required>:<input type="text" class="textin" style="width: 2em;" name="min_c" id="min_c" required> hrs.</div>
            <input type="number" name="matricula" hidden value="<?php echo $matricula ?>">
            <input type="number" name="dia_e" id="dia_e" hidden><input type="number" name="mes_e" id="mes_e" hidden><input type="number" name="ano_e" id="ano_e" hidden>
        </form>
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
<script type="text/javascript">

var fechaActual = new Date();


var dia = fechaActual.getDate();
var mes = fechaActual.getMonth() + 1;
var ano = fechaActual.getFullYear();

document.getElementById("dia_e").value = dia;
document.getElementById("mes_e").value = mes;
document.getElementById("ano_e").value = ano;

document.getElementById("enviarFormulario").addEventListener("click", function(event) {
            event.preventDefault();

            var sem = document.getElementById("semestre").value;  //copiar
            
            var semestres = /^[1-6]+$/;

            var r2 = semestres.test(sem);

            
            if(document.getElementById("semestre").value == ""){
                alert("Ingresa el semestre <?php if($genero == "H"){ echo "del alumno"; }else{ echo "de la alumna"; } ?>");
                document.getElementById("semestre").value="<?php echo $semestre; ?>";
            }else if(r2 != true){
                alert("Ingresa correctamente el semestre <?php if($genero == "H"){ echo "del alumno"; }else{ echo "de la alumna"; } ?>");
                document.getElementById("semestre").value="<?php echo $semestre; ?>";
            }


            //Enviar form  
            if(r2 == true){
                document.getElementById("formCitatorio").submit(); 
            }


             
        });
</script> 