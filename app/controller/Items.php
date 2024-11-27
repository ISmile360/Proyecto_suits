<?php
require_once '../config/conexion.php';

class Items extends Conexion {
    public function obtener_datos() {
        $consulta = $this->obtener_conexion()->prepare("SELECT * FROM items");
        $consulta->execute();
        $datos = $consulta->fetchAll(PDO::FETCH_ASSOC);
        $this->cerrar_conexion();
        echo json_encode($datos);
    }

    public function insertar_datos() {
        $insercion = $this->obtener_conexion()->prepare(
            "INSERT INTO items (nombre_item, tipo, precio, descripcion, imagen_url) 
            VALUES (:nombre_item, :tipo, :precio, :descripcion, :imagen_url)"
        );
        $nombre_item = $_POST['nombre_item'];	
        $tipo = $_POST['tipo'];	
        $precio = $_POST['precio'];	
        $descripcion = $_POST['descripcion'];
        $imagen_url = $_POST['imagen_url'];

        $insercion->bindParam(':nombre_item', $nombre_item);
        $insercion->bindParam(':tipo', $tipo);
        $insercion->bindParam(':precio', $precio);
        $insercion->bindParam(':descripcion', $descripcion);
        $insercion->bindParam(':imagen_url', $imagen_url);

        if ($insercion->execute()) {
            echo json_encode([1, "Inserción correcta"]);
        } else {
            echo json_encode([0, "Inserción no realizada"]);
        }
    }

    public function actualizar_datos() {
        $actualizacion = $this->obtener_conexion()->prepare(
            "UPDATE items 
            SET nombre_item = :nombre_item, tipo = :tipo, precio = :precio, descripcion = :descripcion, imagen_url = :imagen_url 
            WHERE id_item = :id_item"
        );
        $nombre_item = $_POST['nombre_item'];	
        $tipo = $_POST['tipo'];	
        $precio = $_POST['precio'];	
        $descripcion = $_POST['descripcion'];
        $imagen_url = $_POST['imagen_url'];
        $id_item = $_POST['id_item'];

        $actualizacion->bindParam(':nombre_item', $nombre_item);
        $actualizacion->bindParam(':tipo', $tipo);
        $actualizacion->bindParam(':precio', $precio);
        $actualizacion->bindParam(':descripcion', $descripcion);
        $actualizacion->bindParam(':imagen_url', $imagen_url);
        $actualizacion->bindParam(':id_item', $id_item);

        if ($actualizacion->execute()) {
            echo json_encode([1, "Actualización correcta", $id_item]);
        } else {
            echo json_encode([0, "Actualización no realizada"]);
        }
    }

    public function eliminar_datos() {
        $eliminar = $this->obtener_conexion()->prepare("DELETE FROM items WHERE id_item = :id_item");
        $id_item = $_POST['id_item'];
        $eliminar->bindParam(':id_item', $id_item);

        if ($eliminar->execute()) {
            echo json_encode([1, "Eliminación correcta"]);
        } else {
            echo json_encode([0, "Eliminación no realizada"]);
        }
    }

    public function precargar_datos() {
        $consulta = $this->obtener_conexion()->prepare("SELECT * FROM items WHERE id_item = :id_item");
        $id_item = $_POST['id_item'];
        $consulta->bindParam(":id_item", $id_item);
        $consulta->execute();
        $datos = $consulta->fetch(PDO::FETCH_ASSOC);
        echo json_encode($datos);
    }
}

$consulta = new Items();
$metodo = $_POST['metodo'];
$consulta->$metodo();
?>
