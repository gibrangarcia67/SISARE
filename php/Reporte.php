<?php
include("conexionsql.php");
$matricula=$_GET["matricula"];
$sql="SELECT * FROM alumnos WHERE matricula = '$matricula'";


$result=mysqli_query($conexion,$sql);
                    while($mostrar=mysqli_fetch_array($result)){
                        $semestre = substr($mostrar['grupo'], 0, 1);
                        $grupo = substr($mostrar['grupo'], 1);
                        $genero = $mostrar['genero']; //Agregar la variable genero, todos los inputs deben de tener id, al mostrar los nombres y fecha ponerles "readonly" al final de los inputs
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
            <a href="#" class="amenu" id="printButton">
                <img src="../icons/imprimir-contorno-del-boton.png" alt="" class="optionsmenu_img">
            </a>
            <a href="#" class="amenu" id="enviarFormulario">
                <img src="../icons/cheque.png" alt="" class="optionsmenu_img">
            </a>
        </div>
    </div>

    <div class="main print-section">
        <div class="main_box">
            <img src="../img/EncabezadoReporte.jpg" alt="" class="main_box_headerimg">
            <form action="insertarR.php" method="POST" id="formReporte">
            <div class="date"> Cd. Victoria Tamaulipas<input type="text" class="indate" id="dia_e" name="dia_e" readonly>/<input type="text" class="indate" id="mes_e" name="mes_e" readonly>/<input type="text" class="indate" id="ano_e" name="ano_e" readonly style="width: 2.5em;"></div>
            
            <p class="bold">Reporte</p>
            
            <div class="grade">

                <div class="opc"><input name="grade" id="grade" type="radio" <?php if($mostrar['cantidad_r'] == 0 || $mostrar['cantidad_r'] == 3 || $mostrar['cantidad_r'] == 6 || $mostrar['cantidad_r'] == 9){ echo "checked"; }else{ echo "disabled"; } ?>>Primero</div>
                <div class="opc"><input name="grade" id="grade" type="radio" <?php if($mostrar['cantidad_r'] == 1 || $mostrar['cantidad_r'] == 4 || $mostrar['cantidad_r'] == 7 || $mostrar['cantidad_r'] == 10){ echo "checked"; }else{ echo "disabled"; } ?>>Segundo</div>
                <div class="opc"><input name="grade" id="grade" type="radio" <?php if($mostrar['cantidad_r'] == 2 || $mostrar['cantidad_r'] == 5 || $mostrar['cantidad_r'] == 8 || $mostrar['cantidad_r'] == 11){ echo "checked"; }else{ echo "disabled"; } ?>>Tercero</div>
                    </div>
            
            <p class="bold-2">SR. (A) PADRE DE FAMILIA O TUTOR</p>
            
            <p class="bold-2 space">P R E S E N T E</p>
            
            <div>Por este medio se le informa que su hija (o)    <input type="text" class="textin" style="width: 25em;" value="<?php echo $mostrar['nombre'] ?>" id="nombre" name="nombre" readonly>     del grupo     <input type="number" class="textin" style="width: 2em;" value="<?php echo $semestre ?>" id="semestre" name="semestre" required> <input type="text" class="textin" style="width: 2em;" value="<?php echo $grupo ?>" id="grupo" name="grupo" required>  ha</div>
            <div>sido reportada (o) por presentar la o las situaciones señaladas:</div>

            
            <div class="sit">
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="No trae tarea">No trae tarea.</div>
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="Faltarle al respeto a un maestro, prefecto o personal administrativo">Faltarle al respeto a un maestro, prefecto o personal administrativo.</div>
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="Salirse del salón de clases, sin autorización">Salirse del salón de clases, sin autorización.</div>
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="Faltarle al respeto a sus compañeros">Faltarle al respeto a sus compañeros.</div>
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="No trabaja en el aula">No trabaja en el aula.</div>
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="Destruir el mobiliario o causar daños en el edificio escolar">Destruir el mobiliario o causar daños en el edificio escolar.</div>
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="Por no cumplir con el uniforme completo (zapatos) ni el recado del padre de familia">Por no cumplir con el uniforme completo (zapatos) ni el recado del padre de familia.</div>
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="No trae corte de cabello natural">No trae corte de cabello natural.</div>
            <div class="opc2"><input type="radio" name="motivo" id="motivo" value="Otro.">Otros.</div>            
            </div>
            
            
            <textarea name="motivo2" cols="30" rows="5" class="textarea"></textarea>
            <input type="number" value="<?php echo $matricula ?>" hidden name="matricula">
            </form>
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
$cantidad_r = $mostrar['cantidad_r'];
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
            var grupo = document.getElementById("grupo").value;
            
            var grupos = /^[A-H]+$/i;
            var semestres = /^[1-6]+$/; //para fechas, usar uno para dias 1-31, mes 1-12 , año 1-9 

            var r1 = grupos.test(grupo);  //copiar
            var r2 = semestres.test(sem);

            
            if(document.getElementById("semestre").value == ""){
                alert("Ingresa el semestre <?php if($genero == "H"){ echo "del alumno"; }else{ echo "de la alumna"; } ?>");
                document.getElementById("semestre").value="<?php echo $semestre; ?>";
            }else if(r2 != true|| document.getElementById("semestre").value.length != 1){
                alert("Ingresa correctamente el semestre <?php if($genero == "H"){ echo "del alumno"; }else{ echo "de la alumna"; } ?>");
                document.getElementById("semestre").value="<?php echo $semestre; ?>";
            }


            if(document.getElementById("grupo").value == ""){
                alert("Ingresa el grupo <?php if($genero == 'H'){ echo 'del alumno'; }else{ echo 'de la alumna'; } ?>");
                document.getElementById("grupo").value="<?php echo $grupo; ?>";
            }else if(r1 != true || document.getElementById("grupo").value.length != 1){
                alert("Ingresa correctamente el grupo <?php if($genero == 'H'){ echo 'del alumno'; }else{ echo 'de la alumna'; } ?>");
                document.getElementById("grupo").value="<?php echo $grupo; ?>";
            }


            //Enviar form   TAMBIEN AGREGAR
            
            if(r1 == true && r2 == true && document.getElementById("semestre").value.length == 1 && document.getElementById("grupo").value.length == 1){
                document.getElementById("formReporte").submit(); 
            }  
        });
        
document.getElementById('printButton').addEventListener('click', function() {
        window.print();
    });

</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/printThis/1.15.0/printThis.min.js"></script>
