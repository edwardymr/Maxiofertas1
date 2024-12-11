<?php
$host = "localhost";
$usuario = "root"; // Usuario por defecto de WAMP
$clave = ""; // Contraseña por defecto de WAMP
$base_datos = "farmacia";

$conexion = new mysqli($host, $usuario, $clave, $base_datos);

if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}
?>
