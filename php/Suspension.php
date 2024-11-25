<?php
    include("conexionsql.php");
    $matricula=$_GET["matricula"];
    $sql="SELECT * FROM alumnos WHERE matricula = '$matricula'";

    $result=mysqli_query($conexion,$sql);
    while($mostrar=mysqli_fetch_array($result)){
        $semestre = substr($mostrar['grupo'], 0, 1);
        $grupo = substr($mostrar['grupo'], 1);
        $genero = $mostrar['genero']; // Variable de género
?>      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Suspensión</title>
    <link rel="stylesheet" href="../css/Suspension.css">
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
            <form action="insertarS.php" method="POST" id="formSuspension">

            <div class="date"> Cd. Victoria Tamaulipas<input type="text" class="indate" id="dia_e" name="dia_e" required readonly>/<input type="text" class="indate" id="mes_e" name="mes_e" required readonly>/<input type="text" class="indate" id="ano_e" name="ano_e" required readonly style="width: 2.5em;"></div>

            <p class="bold">SUSPENSIÓN</p>
            
            <p class="bold-2" style="margin: 3em 0 2em 0;">Centro de Bachillerato Tecnológico Industrial Y de Servicios No. 271</p>
            
            <p class="bold-2" style="margin: 2em 0;">CCT: 28DCT0271F</p>
            
            <div class="center" style="word-spacing: .32em;">Padre o madre de familia y/o tutor del alumna(o) <input type="text" class="textin" style="width: 25em;" value="<?php echo $mostrar['nombre'] ?>" id="nombre" name="nombre" required readonly></div>
            
            <div class="center" style="word-spacing: .04em;">del grupo <input type="text" class="textin" style="width: 1.5em;" value="<?php echo $semestre ?>" id="semestre" name="semestre" required> <input type="text" class="textin" style="width: 1.5em;" value="<?php echo $grupo ?>" id="grupo" name="grupo" required> de la especialidad de <input type="text" class="textin" style="width: 22em;" value="<?php echo $mostrar['especialidad'] ?>" id="especialidad" name="especialidad" required readonly>, por acumulación de</div>
            
            <div class="center" style="word-spacing: .54em;">reportes, y de faltar al reglamento escolar del CBTis No. 271 en los artículos 39, inciso 7, y </div>
            
            <div class="center" style="word-spacing: .63em;">acumulación de reportes del reglamento escolar ha sido suspendida(o) a partir del <input type="text" class="textin" style="width: 1.5em;" id="dia_i" name="dia_i" required> /</div>
            
            <div style="word-spacing: .35em;"><input type="text" class="textin" style="width: 1.5em;" id="mes_i" name="mes_i" required> / <input type="text" class="textin" style="width: 2.5em;" id="ano_i" name="ano_i" required> y deberá regresar el día <input type="text" class="textin" style="width: 1.5em;" id="dia_f" name="dia_f" required> / <input type="text" class="textin" style="width: 1.5em;" id="mes_f" name="mes_f" required> / <input type="text" class="textin" style="width: 2.5em;" id="ano_f" name="ano_f" required>.</div>
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

    var sem = document.getElementById("semestre").value;
    var grupo = document.getElementById("grupo").value;
    
    var dia_i = document.getElementById("dia_i").value;
    var mes_i = document.getElementById("mes_i").value;
    var ano_i = document.getElementById("ano_i").value;

    var dia_f = document.getElementById("dia_f").value;
    var mes_f = document.getElementById("mes_f").value;
    var ano_f = document.getElementById("ano_f").value;

    var grupos = /^[A-H]+$/i;
    var semestres = /^[1-6]+$/;
    var r1 = grupos.test(grupo);
    var r2 = semestres.test(sem);

    // Validación de fecha de inicio no mayor a fecha de fin y que el año sea a partir de 2024
    var fechaInicio = new Date(ano_i, mes_i - 1, dia_i);
    var fechaFin = new Date(ano_f, mes_f - 1, dia_f);

    if(fechaInicio > fechaFin){
        alert("La fecha de inicio no puede ser mayor que la fecha de fin.");
        return;
    }

    if(ano_i < 2024 || ano_f < 2024){
        alert("El año no puede ser menor a 2024.");
        return;
    }

    // Validación de semestre
    if(document.getElementById("semestre").value == ""){
        alert("Ingresa el semestre <?php if($genero == "H"){ echo "del alumno"; }else{ echo "de la alumna"; } ?>");
        document.getElementById("semestre").value="<?php echo $semestre; ?>";
    } else if(r2 != true || document.getElementById("semestre").value.length != 1){
        alert("Ingresa correctamente el semestre <?php if($genero == "H"){ echo "del alumno"; }else{ echo "de la alumna"; } ?>");
        document.getElementById("semestre").value="<?php echo $semestre; ?>";
    }

    // Validación de grupo
    if(document.getElementById("grupo").value == ""){
        alert("Ingresa el grupo <?php if($genero == 'H'){ echo 'del alumno'; }else{ echo 'de la alumna'; } ?>");
        document.getElementById("grupo").value="<?php echo $grupo; ?>";
    } else if(r1 != true || document.getElementById("grupo").value.length != 1){
        alert("Ingresa correctamente el grupo <?php if($genero == 'H'){ echo 'del alumno'; }else{ echo 'de la alumna'; } ?>");
        document.getElementById("grupo").value="<?php echo $grupo; ?>";
    }

    // Si todas las validaciones son correctas, envía el formulario
    if(r1 == true && r2 == true && document.getElementById("semestre").value.length == 1 && document.getElementById("grupo").value.length == 1){
        document.getElementById("formSuspension").submit(); 
    }
});
document.getElementById('printButton').addEventListener('click', function() {
    var sem = document.getElementById("semestre").value;
    var grupo = document.getElementById("grupo").value;
    
    var dia_i = document.getElementById("dia_i").value;
    var mes_i = document.getElementById("mes_i").value;
    var ano_i = document.getElementById("ano_i").value;

    var dia_f = document.getElementById("dia_f").value;
    var mes_f = document.getElementById("mes_f").value;
    var ano_f = document.getElementById("ano_f").value;

    var grupos = /^[A-H]+$/i;
    var semestres = /^[1-6]+$/;
    var r1 = grupos.test(grupo);
    var r2 = semestres.test(sem);

    // Validación de fecha de inicio no mayor a fecha de fin y que el año sea a partir de 2024
    var fechaInicio = new Date(ano_i, mes_i - 1, dia_i);
    var fechaFin = new Date(ano_f, mes_f - 1, dia_f);

    if(fechaInicio > fechaFin){
        alert("La fecha de inicio no puede ser mayor que la fecha de fin.");
        return;
    }

    if(ano_i < 2024 || ano_f < 2024){
        alert("El año no puede ser menor a 2024.");
        return;
    }

    // Validación de semestre
    if(document.getElementById("semestre").value == ""){
        alert("Ingresa el semestre <?php if($genero == "H"){ echo "del alumno"; }else{ echo "de la alumna"; } ?>");
        document.getElementById("semestre").value="<?php echo $semestre; ?>";
    } else if(r2 != true || document.getElementById("semestre").value.length != 1){
        alert("Ingresa correctamente el semestre <?php if($genero == "H"){ echo "del alumno"; }else{ echo "de la alumna"; } ?>");
        document.getElementById("semestre").value="<?php echo $semestre; ?>";
    }

    // Validación de grupo
    if(document.getElementById("grupo").value == ""){
        alert("Ingresa el grupo <?php if($genero == 'H'){ echo 'del alumno'; }else{ echo 'de la alumna'; } ?>");
        document.getElementById("grupo").value="<?php echo $grupo; ?>";
    } else if(r1 != true || document.getElementById("grupo").value.length != 1){
        alert("Ingresa correctamente el grupo <?php if($genero == 'H'){ echo 'del alumno'; }else{ echo 'de la alumna'; } ?>");
        document.getElementById("grupo").value="<?php echo $grupo; ?>";
    }

    // Si todas las validaciones son correctas, envía el formulario
    if(r1 == true && r2 == true && document.getElementById("semestre").value.length == 1 && document.getElementById("grupo").value.length == 1){
        window.print();
    }    
    
      
    });
</script>
