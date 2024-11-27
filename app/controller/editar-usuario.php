<?php

require_once '../config/conexion.php';
session_start();

class Usuario extends Conexion {
    private function actualizar_sesion($datos) {
        $_SESSION['usuario'] = $datos;
    }

    public function editar_usuario() {
        if (!isset($_SESSION['usuario'])) {
            echo json_encode([0, "No hay sesión activa."]);
            return;
        }

        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        $nombre_de_invocador = $_POST['nombre_de_invocador'];

        if (empty($nombre_de_invocador)) {
            echo json_encode([0, "El nombre de invocador no puede estar vacío."]);
            return;
        }

        $consulta_sql = "UPDATE invocador SET nombre = :nombre, apellido = :apellido, nombre_de_invocador = :nuevo_nombre_de_invocador WHERE nombre_de_invocador = :nombre_de_invocador_antiguo";
        $consulta = $this->obtener_conexion()->prepare($consulta_sql);

        $consulta->bindParam(":nombre", $nombre);
        $consulta->bindParam(":apellido", $apellido);
        $consulta->bindParam(":nuevo_nombre_de_invocador", $nombre_de_invocador);
        $consulta->bindParam(":nombre_de_invocador_antiguo", $_SESSION['usuario']['nombre_de_invocador']);

        if ($consulta->execute()) {
            $this->actualizar_sesion([
                'nombre' => $nombre,
                'apellido' => $apellido,
                'nombre_de_invocador' => $nombre_de_invocador
            ]);
            echo json_encode([1, "Datos actualizados correctamente."]);
        } else {
            echo json_encode([0, "Error al actualizar los datos."]);
        }
    }
}

$consulta = new Usuario();
$metodo = $_POST['metodo'];
$consulta->$metodo();

?>
