<?php
include ("conexionsql.php"); 
$id=$_GET['id'];
$matricula=$_GET['matricula'];
$pinol="DELETE FROM suspensiones WHERE id='$id'";
if($resultado=mysqli_query($conexion,$pinol)){
    $resultado2 = $conexion->query("SELECT COUNT(*) FROM suspensiones WHERE matricula = '$matricula'");
    $count = $resultado2->fetch_row()[0];
    $salvador="UPDATE alumnos SET cantidad_s='$count' WHERE matricula='$matricula'";

    if($resultado2=mysqli_query($conexion,$salvador)){
        header("location: expediente.php?matricula=$matricula");
    }
}
