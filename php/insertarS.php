
<?php
include("conexionsql.php");
if(!empty($_POST['dia_e']) && !empty($_POST['mes_e']) && !empty($_POST['ano_e']) && 
!empty($_POST['nombre']) && !empty($_POST['semestre']) && !empty($_POST['grupo']) && 
!empty($_POST['especialidad']) && !empty($_POST['dia_i']) && !empty($_POST['mes_i']) && 
!empty($_POST['ano_i']) && !empty($_POST['dia_f']) && !empty($_POST['mes_f']) && !empty($_POST['ano_f']))
{
$matricula=$_POST['matricula'];
$dia_e=$_POST['dia_e'];
$mes_e=$_POST['mes_e'];
$ano_e=$_POST['ano_e'];
$nombre=$_POST['nombre'];
$semestre=$_POST['semestre'];
$grupo=$_POST['grupo'];
$especialidad=$_POST['especialidad'];
$dia_i=$_POST['dia_i'];
$mes_i=$_POST['mes_i'];
$ano_i=$_POST['ano_i'];
$dia_f=$_POST['dia_f'];
$mes_f=$_POST['mes_f'];
$ano_f=$_POST['ano_f'];

$grupo=$_POST['semestre'].$_POST['grupo'];




$vladimir="INSERT INTO suspensiones VALUES('','$dia_i','$mes_i','$ano_i','$dia_f','$mes_f','$ano_f','$grupo','$especialidad','$dia_e','$mes_e','$ano_e','$matricula')";

if($resultado=mysqli_query($conexion,$vladimir)){
    $resultado2 = $conexion->query("SELECT COUNT(*) FROM suspensiones WHERE matricula = '$matricula'");
    $count = $resultado2->fetch_row()[0];
    $salvador="UPDATE alumnos SET cantidad_s='$count' WHERE matricula='$matricula'";
    if($resultado3=mysqli_query($conexion,$salvador)){header("location: expediente.php?matricula=$matricula");}

}


} else{echo "<script>alert('Favor de llenar todos los datos'); window.history.go(-1);</script>";}