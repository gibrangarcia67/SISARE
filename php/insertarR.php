
<?php
include("conexionsql.php");
if(!empty($_POST['dia_e']) && !empty($_POST['mes_e']) && !empty($_POST['ano_e']) && 
!empty($_POST['nombre']) && !empty($_POST['semestre']) && !empty($_POST['grupo']))
{
$matricula=$_POST['matricula'];
$dia_e=$_POST['dia_e'];
$mes_e=$_POST['mes_e'];
$ano_e=$_POST['ano_e'];
$nombre=$_POST['nombre'];

if (!empty($_POST['motivo'])) {
    // Verificamos si seleccionaron "Otro."
    if ($_POST['motivo'] == "Otro.") {
        // Si es "Otro.", pero no han escrito en el textarea, mostramos un error
        if (empty($_POST['motivo2'])) {
            echo "<script>alert('Favor de escribir el otro motivo'); window.history.go(-1);</script>";
            exit();
        } else {
            // Si seleccionaron "Otro." y escribieron algo en el textarea, usamos el textarea
            $motivo = $_POST['motivo2'];
        }
    } else {
        // Si seleccionaron una opción predefinida y también escribieron en el textarea
        if (!empty($_POST['motivo2'])) {
            echo "<script>alert('Favor de seleccionar solo un motivo (predefinido o escribir en el campo de texto), no ambos'); window.history.go(-1);</script>";
            exit();
        } else {
            // Si seleccionaron una opción predefinida y el textarea está vacío, usamos el motivo predefinido
            $motivo = $_POST['motivo'];
        }
    }
} elseif (!empty($_POST['motivo2'])) {
    // Si no seleccionaron ninguna opción predefinida pero escribieron en el textarea
    echo "<script>alert('Favor de seleccionar la opción \"Otros.\" para escribir un motivo personalizado'); window.history.go(-1);</script>";
    exit();
} else {
    // Si no seleccionaron nada, mostramos un error
    echo "<script>alert('Favor de seleccionar un motivo'); window.history.go(-1);</script>";
    exit();
}








$grupo=$_POST['semestre'].$_POST['grupo'];




$lalo="INSERT INTO reportes VALUES('','$motivo','$dia_e','$mes_e','$ano_e','$matricula')";

if($resultado=mysqli_query($conexion,$lalo)){

    $resultado2 = $conexion->query("SELECT COUNT(*) FROM reportes WHERE matricula = '$matricula'");

    $count = $resultado2->fetch_row()[0];

    $paola="UPDATE alumnos SET cantidad_r='$count' WHERE matricula='$matricula'";

    if($resultado3=mysqli_query($conexion,$paola)){
        
        header("location: expediente.php?matricula=$matricula");
    
    }

}


} else{echo "<script>alert('Favor de llenar todos los datos'); window.history.go(-1);</script>";}