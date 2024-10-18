<?php
// Incluir el archivo de conexión
include("conexionsql.php");

// Consulta para obtener la menor generación
$sql_generacion = "SELECT MIN(generacion) AS menor_generacion FROM alumnos";
$resultado = $conexion->query($sql_generacion);

if ($resultado->num_rows > 0) {
    // Obtener la menor generación
    $fila = $resultado->fetch_assoc();
    $menor_generacion = $fila['menor_generacion'];

    // Obtener las matrículas de los alumnos con la menor generación
    $sql_matriculas = "SELECT matricula FROM alumnos WHERE generacion = ?";
    $stmt_matriculas = $conexion->prepare($sql_matriculas);
    $stmt_matriculas->bind_param("s", $menor_generacion);
    $stmt_matriculas->execute();
    $resultado_matriculas = $stmt_matriculas->get_result();

    // Comenzar una transacción para asegurar que todas las operaciones se realicen juntas
    $conexion->begin_transaction();

    try {
        // Eliminar los registros en las tablas relacionadas para cada matrícula obtenida
        while ($fila_matricula = $resultado_matriculas->fetch_assoc()) {
            $matricula = $fila_matricula['matricula'];

            // Eliminar de la tabla 'cartacompromiso'
            $sql_borrar_cartacompromiso = "DELETE FROM cartacompromiso WHERE matricula = ?";
            $stmt_borrar = $conexion->prepare($sql_borrar_cartacompromiso);
            $stmt_borrar->bind_param("s", $matricula);
            $stmt_borrar->execute();

            // Eliminar de la tabla 'citatorios'
            $sql_borrar_citatorios = "DELETE FROM citatorios WHERE matricula = ?";
            $stmt_borrar = $conexion->prepare($sql_borrar_citatorios);
            $stmt_borrar->bind_param("s", $matricula);
            $stmt_borrar->execute();

            // Eliminar de la tabla 'reportes'
            $sql_borrar_reportes = "DELETE FROM reportes WHERE matricula = ?";
            $stmt_borrar = $conexion->prepare($sql_borrar_reportes);
            $stmt_borrar->bind_param("s", $matricula);
            $stmt_borrar->execute();

            // Eliminar de la tabla 'suspensiones'
            $sql_borrar_suspensiones = "DELETE FROM suspensiones WHERE matricula = ?";
            $stmt_borrar->bind_param("s", $matricula);
            $stmt_borrar->execute();
        }

        // Después de eliminar de las tablas relacionadas, eliminar de la tabla 'alumnos'
        $sql_borrar_alumnos = "DELETE FROM alumnos WHERE generacion = ?";
        $stmt_borrar_alumnos = $conexion->prepare($sql_borrar_alumnos);
        $stmt_borrar_alumnos->bind_param("s", $menor_generacion);
        $stmt_borrar_alumnos->execute();

        // Confirmar la transacción
        $conexion->commit();

        // Redirigir a la página anterior con JavaScript
        echo "<script>
            alert('Registros de la generación $menor_generacion eliminados exitosamente.');
            window.history.go(-1);
        </script>";

    } catch (Exception $e) {
        // Si hay un error, deshacer los cambios
        $conexion->rollback();
        echo "Error al eliminar los registros: " . $e->getMessage();
    }

} else {
    echo "No se encontraron registros con la menor generación.";
}

// Cerrar la conexión
$conexion->close();
?>
