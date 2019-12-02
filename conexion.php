<?php
$_SERVER = 'localhost';
$usuario = 'root';
$password = '';
$database = 'fakecore';

$conexion = mysqli_connect($_SERVER, $usuario, $password, $database);
if($conexion){
    echo "Conexion exitosa";
} else {
    echo "Conexion fallida";
}
?>

