<?php
include ("conexionsql.php"); 
$id=$_GET['id'];
$matricula=$_GET['matricula'];
$suavitel="DELETE FROM reprtes WHERE Id_carta='$id'";
if($resultado=mysqli_query($conexion,$suavitel)){
    $resultado2 = $conexion->query("SELECT COUNT(*) FROM reprtes WHERE matricula = '$matricula'");
    $count = $resultado2->fetch_row()[0];
    $salvador="UPDATE alumnos SET cantidad_r='$count' WHERE matricula='$matricula'";

    if($resultado2=mysqli_query($conexion,$salvador)){
        header("location: expediente.php?matricula=$matricula");
    }
}
