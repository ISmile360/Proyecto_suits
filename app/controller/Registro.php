<?php
require_once '../config/conexion.php';

class Registro extends Conexion {
    public function iniciar_registro(){
    
        if(empty($_POST['nombre']) || empty($_POST['apellido']) || empty($_POST['nombre_de_invocador']) || empty($_POST['password'])) {
            echo json_encode([0, "Todos los campos son obligatorios."]);
            return;
        }

        
        if (strlen($_POST['nombre_de_invocador']) < 3) {
            echo json_encode([0, "El nombre de invocador debe tener al menos 3 caracteres."]);
            return;
        }

        if (strlen($_POST['password']) < 8) {
            echo json_encode([0, "La contraseña debe tener al menos 8 caracteres."]);
            return;
        }

        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        $nombre_de_invocador = $_POST['nombre_de_invocador'];
        $password = $_POST['password'];

       
        $consulta = $this->obtener_conexion()->prepare("SELECT * FROM invocador WHERE nombre_de_invocador = :nombre_de_invocador");
        $consulta->bindParam(":nombre_de_invocador", $nombre_de_invocador);
        $consulta->execute();
        $datos = $consulta->fetch(PDO::FETCH_ASSOC);

        if(!$datos){
            
            $insercion = $this->obtener_conexion()->prepare("INSERT INTO invocador (nombre, apellido, nombre_de_invocador, password) VALUES(:nombre, :apellido, :nombre_de_invocador, :password)");
            $insercion->bindParam(":nombre", $nombre);
            $insercion->bindParam(":apellido", $apellido);
            $insercion->bindParam(":nombre_de_invocador", $nombre_de_invocador);
            $pass = password_hash($password, PASSWORD_BCRYPT);
            $insercion->bindParam(":password", $pass);
            
            if($insercion->execute()){
                echo json_encode([1, "Usuario registrado con éxito!"]);
            } else {
                echo json_encode([0, "Error al registrar al usuario."]);
            }
        } else {
            echo json_encode([0, "Error, el nombre de invocador ya está registrado."]);
        }
    }
}

$consulta = new Registro();
$metodo = $_POST['metodo'];
$consulta->$metodo();
?>
