<?php
include("conexionsql.php");

if(!empty($_POST['dia_e']) && !empty($_POST['mes_e']) && !empty($_POST['ano_e']) && 
!empty($_POST['nombre']) && !empty($_POST['semestre']) &&
!empty($_POST['dia_c']) && !empty($_POST['mes_c']) && !empty($_POST['ano_c']) && 
!empty($_POST['hora_c']) && !empty($_POST['hora_c'])){

$matricula=$_POST['matricula'];
$dia_e=$_POST['dia_e'];
$mes_e=$_POST['mes_e'];
$ano_e=$_POST['ano_e'];
$dia_c=$_POST['dia_c'];
$mes_c=$_POST['mes_c'];
$ano_c=$_POST['ano_c'];
$hora_c=$_POST['hora_c'];
$min_c=$_POST['min_c'];
$nombre=$_POST['nombre'];
$semestre=$_POST['semestre'];

$sql="INSERT INTO citatorios VALUES('','$dia_e','$mes_e','$ano_e','$dia_c','$mes_c','$ano_c','$hora_c','$min_c','$semestre','$matricula')";

if($resultado=mysqli_query($conexion,$sql)){

    $resultado2 = $conexion->query("SELECT COUNT(*) FROM citatorios WHERE matricula = '$matricula'");

    $count = $resultado2->fetch_row()[0];

    $sql2="UPDATE alumnos SET cantidad_c='$count' WHERE matricula='$matricula'";

    if($resultado3=mysqli_query($conexion,$sql2)){
        
        header("location: expediente.php?matricula=$matricula");
    
    }
}

} else{echo "<script>alert('Favor de llenar todos los datos'); window.history.go(-1);</script>";}