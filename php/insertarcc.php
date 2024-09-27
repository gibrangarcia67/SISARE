
<?php
include("conexionsql.php");
if(!empty($_POST['dia_e']) && !empty($_POST['mes_e']) && !empty($_POST['ano_e']) && 
!empty($_POST['tutor']) && !empty($_POST['nombre']) && !empty($_POST['semestre']) && 
!empty($_POST['grupo']) && !empty($_POST['especialidad']))
{
$matricula=$_POST['matricula'];
$dia_e=$_POST['dia_e'];
$mes_e=$_POST['mes_e'];
$ano_e=$_POST['ano_e'];
$tutor=$_POST['tutor'];
$nombre=$_POST['nombre'];
$especialidad=$_POST['especialidad'];

$grupo=$_POST['semestre'].$_POST['grupo'];




$cesar="INSERT INTO cartacompromiso VALUES('','$tutor','$grupo','$especialidad','$dia_e','$mes_e','$ano_e','$matricula')";

$resultado=mysqli_query($conexion,$cesar);

} else{echo "<script>alert('Favor de llenar todos los datos'); window.history.go(-1);</script>";}