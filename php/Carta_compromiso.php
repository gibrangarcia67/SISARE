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
    <title>Carta compromiso</title>
    <link rel="stylesheet" href="../css/Carta_compromiso.css">
</head>
<body>
    <?php if(!empty($mostrar['nombre_p'])){
        $nombre=$mostrar['nombre_p'];
    }
    else{
        $nombre=$mostrar['nombre_m'];
    }
    ?>
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
            <form action="insertarCC.php"method="POST" id="formCartaCompromiso">
            <div class="date"> Cd. Victoria Tamaulipas<input type="text" class="indate" id="dia_e" name="dia_e" required readonly>/<input type="text" class="indate" id="mes_e" name="mes_e" required readonly>/<input type="text" class="indate" id="ano_e" name="ano_e" required readonly style="width: 2.5em;"></div> 
            
            <p class="bold">CARTA COMPROMISO</p>
            
            <div class="center" style="word-spacing:.66em;">El que firma la siguiente carta compromiso C.<input type="text" class="textin" style="width: 25em;" value="<?php echo $nombre ?>" id="tutor" name="tutor" required></div>
            <div class="center" style="word-spacing:.43em;">quien funge como tutor legal del alumna (a).<input type="text" class="textin" style="width: 27em;" value="<?php echo $mostrar['nombre'] ?>" id="nombre" name="nombre" required readonly></div>
            <div class="center flex" style="word-spacing: 2.4em;">perteneciente al CBTis No. 271 grupo <div class="flex"><input type="text" class="textin" style="width: 1.5em;" value="<?php echo $semestre ?>" id="semestre" name="semestre" required> <input type="text" class="textin" style="width: 1.5em;" value="<?php echo $grupo ?>" id="grupo" name="grupo" required></div> de la especialidad de</div>
            <div class="center" style="word-spacing: .03em;"><input type="text" class="textin" style="width: 22em;" value="<?php echo $mostrar['especialidad'] ?>" id="especialidad" name="especialidad" required readonly> se compromete a que el alumno (a) citado (a) cumpla en su</div>
            <div class="center" style="word-spacing: 1.04em;">totalidad todos los artículos e indicaciones dispuestas en el reglamento general de </div>
            <div class="center" style="word-spacing: .58em;">alumnos del CBTIS No. 271 así como las indicaciones que el personal docente y de apoyo</div>
            <div class="center" style="word-spacing: .48em;">del plantel indiquen. De no cumplir con lo anterior, el/la alumno (a) será acreedor (a) a una </div>
            <div style="margin-bottom: 1.5em;">baja temporal, definitiva o expulsión.</div>
            <input type="number" value="<?php echo $matricula ?>" hidden name="matricula">
            </form>
            
            <div style="word-spacing:.65em;margin-top: .4em; margin-bottom: .4em;">
                Tengo en mi conocimiento y reconozco que el plantel me ha explicado el motivo de la
            </div>
            <div style="word-spacing:.89em;;margin-top: .4em; margin-bottom: .4em;">
                presente, así como tener conocimiento del reglamento escolar el cual fue firmado al
            </div>
            <div style="word-spacing:.3em;margin-top: .4em; margin-bottom: 5em;">
                ingreso de mi hijo.  
            </div>

            <div style="word-spacing:.3em;margin-top: .4em; margin-bottom: 15em;">
                Firmo de autorización y compromiso:
            </div>

            <div class="box">
                <div class="content">
                <div class="firmas">
                    <div class="bold-3">NOMBRE Y FIRMA <br> DEL TUTOR LEGAL</div>
                </div>
                <div class="firmas">
                    <div class="bold-3">NOMBRE Y FIRMA <br> DEL ALUMNO (A)</div>
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

            var semestres = /^[1-6]+$/; 



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
                document.getElementById("formCartaCompromiso").submit(); 
            }


             
        });

function regresar(){
    window.history.go("-1");
}


</script> 