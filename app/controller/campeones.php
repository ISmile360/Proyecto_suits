<?php
require_once '../config/conexion.php';

class Campeones extends Conexion {
    public function obtener_campeones() {
        $consulta = $this->obtener_conexion()->prepare("SELECT * FROM campeones");
        $consulta->execute();
        $datos = $consulta->fetchAll(PDO::FETCH_ASSOC);
        $this->cerrar_conexion();
        echo json_encode($datos);
    }

    public function agregar_campeon() {
        $insercion = $this->obtener_conexion()->prepare("INSERT INTO campeones (nombre, rol, difficultad, image_url) VALUES (:nombre, :rol, :difficultad, :image_url)");
        $nombre = $_POST['nombre'];	
        $rol = $_POST['rol'];	
        $difficultad = $_POST['difficultad'];
        $image_url = $_POST['image_url'];
        $insercion->bindParam(':nombre', $nombre);
        $insercion->bindParam(':rol', $rol);
        $insercion->bindParam(':difficultad', $difficultad);
        $insercion->bindParam(':image_url', $image_url);
        $insercion->execute();
        if ($insercion) {
            echo json_encode([1, "Inserción correcta"]);
        } else {
            echo json_encode([0, "Inserción no realizada"]);
        }
    }

    public function actualizar_campeon() {
        $actualizacion = $this->obtener_conexion()->prepare("UPDATE campeones SET nombre = :nombre, rol = :rol, difficultad = :difficultad, image_url = :image_url WHERE id_champion = :id_champion");
        $nombre = $_POST['nombre'];
        $rol = $_POST['rol'];
        $difficultad = $_POST['difficultad'];
        $image_url = $_POST['image_url'];
        $id_champion = $_POST['id_champion'];
        $actualizacion->bindParam(':nombre', $nombre);
        $actualizacion->bindParam(':rol', $rol);
        $actualizacion->bindParam(':difficultad', $difficultad);
        $actualizacion->bindParam(':image_url', $image_url);
        $actualizacion->bindParam(':id_champion', $id_champion);
        if ($actualizacion->execute()) {
            echo json_encode([1, "Actualización correcta"]);
        } else {
            echo json_encode([0, "Actualización no realizada"]);
        }
    }

    public function eliminar_campeon() {
        $eliminar = $this->obtener_conexion()->prepare("DELETE FROM campeones WHERE id_champion = :id_champion");
        $id_champion = $_POST['id_champion'];
        $eliminar->bindParam(':id_champion', $id_champion);
        $eliminar->execute();
        if ($eliminar) {
            echo json_encode([1, "Eliminación correcta"]);
        } else {
            echo json_encode([0, "Eliminación no realizada"]);
        }
    }

    public function precargar_campeon() {
        $consulta = $this->obtener_conexion()->prepare("SELECT * FROM campeones WHERE id_champion = :id_champion");
        $id_champion = $_POST['id_champion'];
        $consulta->bindParam(":id_champion", $id_champion);
        $consulta->execute();
        $datos = $consulta->fetch(PDO::FETCH_ASSOC);
        echo json_encode($datos);
    }
}


$consulta = new Campeones();
$metodo = $_POST['metodo'];
$consulta->$metodo();
?>
