<?php
include ("conexionsql.php"); 
$id=$_GET['id'];
$matricula=$_GET['matricula'];
$sql="DELETE FROM citatorios WHERE id='$id'";

if($r=mysqli_query($conexion,$sql)){

    $r2 = $conexion->query("SELECT COUNT(*) FROM citatorios WHERE matricula = '$matricula'");

    $count = $r2->fetch_row()[0];

    $sql2="UPDATE alumnos SET cantidad_c='$count' WHERE matricula='$matricula'";

    if($r2=mysqli_query($conexion,$sql2)){

        header("location: expediente.php?matricula=$matricula");
    }
}
