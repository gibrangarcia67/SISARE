
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

if(!empty($_POST['motivo'])) {
    
    $motivo = $_POST['motivo'];
} else if(!empty($_POST['motivo2'])) {
    
    $motivo = $_POST['motivo2'];
} else {
    
    echo "<script>alert('Favor selecciona o describe un motivo'); window.history.go(-1);</script>";
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