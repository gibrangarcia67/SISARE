<?php
$host = "localhost";
$user = "root";
$password = "";
$dbname = "sisare";
try {
	$conexionpdo = new PDO("mysql:host=".$host.";dbname=".$dbname,$user,$password);
	$conexionpdo->exec("SET CHARACTER SET utf8");
} catch (PDOException $e) {
	echo "Error en la conexion".$e->getMessage();
}