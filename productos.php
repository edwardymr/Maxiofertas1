<?php
include 'conexion.php';

$sql = "SELECT * FROM productos";
$resultado = $conexion->query($sql);

$productos = [];
while($row = $resultado->fetch_assoc()) {
    $productos[] = $row;
}

echo json_encode($productos);
?>
