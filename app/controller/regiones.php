<?php
require_once '../config/conexion.php';

class Regiones extends Conexion {
    public function obtener_regiones() {
        $consulta = $this->obtener_conexion()->prepare("SELECT * FROM regiones");
        $consulta->execute();
        $datos = $consulta->fetchAll(PDO::FETCH_ASSOC);
        $this->cerrar_conexion();
        echo json_encode($datos);
    }
}

$consulta = new Regiones();
$metodo = $_POST['metodo'];
$consulta->$metodo();
?>
