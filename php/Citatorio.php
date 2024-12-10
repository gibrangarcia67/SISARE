<?php
include("conexionsql.php");
$matricula = $_GET["matricula"];
$sql = "SELECT * FROM alumnos WHERE matricula = '$matricula'";
$result = mysqli_query($conexion, $sql);

while ($mostrar = mysqli_fetch_array($result)) {
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
            <a href="#" class="amenu" id="printButton">
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
                <div class="center" style="word-spacing: .21em;">
                    <input type="text" class="textin" style="width: 25em;" name="nombre" id="nombre" value="<?php echo $mostrar['nombre'] ?>" required readonly> 
                    quien cursa el semestre 
                    <input type="text" class="textin" style="width: 4em;" name="semestre" id="semestre" value="<?php echo $semestre ?>" required> Por medio
                </div>
                <div class="center" style="word-spacing:.10em;">
                de este conducto me permito girarle el presente, para que tenga usted el bien de acudir a cita
                </div>
                <div style="margin: .8em 0 .8em 0em;">
                con el departamento de orientación el día 
                    <input type="text" class="textin" style="width: 2em;" name="dia_c" id="dia_c" required>/
                    <input type="text" class="textin" style="width: 2em;" name="mes_c" id="mes_c" required>/
                    <input type="text" class="textin" style="width: 2.5em;" name="ano_c" id="ano_c" required> 
                    a las 
                    <input type="text" class="textin" style="width: 2em;" name="hora_c" id="hora_c" required>:<input type="text" class="textin" style="width: 2em;" name="min_c" id="min_c" required> hrs.
                </div>
                <input type="number" name="matricula" hidden value="<?php echo $matricula ?>">
                <input type="number" name="dia_e" id="dia_e" hidden>
                <input type="number" name="mes_e" id="mes_e" hidden>
                <input type="number" name="ano_e" id="ano_e" hidden>
            </form>

            <div class="center" style="word-spacing:.6em;margin-top: 3em;">
                Por la importancia a este llamado, le pedimos su puntualidad y asistencia; sin otro 
            </div>
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
</div>

</body>
</html>
<?php
}
?>

<script type="text/javascript">
// Obtener la fecha actual
var fechaActual = new Date();
var dia = fechaActual.getDate();
var mes = fechaActual.getMonth() + 1;
var ano = fechaActual.getFullYear();

// Asignar la fecha actual a los campos ocultos
document.getElementById("dia_e").value = dia;
document.getElementById("mes_e").value = mes;
document.getElementById("ano_e").value = ano;

// Función para validar campos
function validarCampos() {
    // Validar fecha
    var dia_c = document.getElementById("dia_c").value;
    var mes_c = document.getElementById("mes_c").value;
    var ano_c = document.getElementById("ano_c").value;
    if (!dia_c || !mes_c || !ano_c) {
        alert("Por favor, ingresa una fecha completa.");
        return false;
    }

    var fechaIngresada = new Date(ano_c, mes_c - 1, dia_c);
    if (fechaIngresada.getFullYear() != ano_c || (fechaIngresada.getMonth() + 1) != mes_c || fechaIngresada.getDate() != dia_c) {
        alert("La fecha ingresada no es válida.");
        return false;
    }

    // Validar hora
    var hora_c = document.getElementById("hora_c").value;
    var min_c = document.getElementById("min_c").value;
    if (!hora_c || !min_c || isNaN(hora_c) || isNaN(min_c) || hora_c < 0 || hora_c > 23 || min_c < 0 || min_c > 59) {
        alert("Ingrese una hora a citar.");
        return false;
    }

    // Validar semestre
    var semestre = document.getElementById("semestre").value;
    var semestres = /^[1-6]+$/;
    if (!semestre) {
        alert("Ingresa el semestre <?php if ($genero == 'H') { echo 'del alumno'; } else { echo 'de la alumna'; } ?>.");
        return false;
    }
    if (!semestres.test(semestre)) {
        alert("Ingresa correctamente el semestre (1-6).");
        return false;
    }

    return true;
}

// Manejar el botón de enviar
document.getElementById("enviarFormulario").addEventListener("click", function(event) {
    event.preventDefault();
    if (validarCampos()) {
        document.getElementById("formCitatorio").submit();
    }
});

// Manejar el botón de imprimir
document.getElementById("printButton").addEventListener("click", function(event) {
    event.preventDefault();
    if (validarCampos()) {
        window.print();
    }
});
</script>

