<?php
    // Redirige si el usuario ya está registrado
    if(isset($_SESSION['nombre_de_invocador'])){
        header("location:inicio");
        exit();
    }
    include 'navegacion.php'; 

?>
<link rel="stylesheet" href="<?=CSS.'Registro.css'?>">

<form class="container mt-3">
    <div class="row justify-content-center">
        <div class="col-12 col-md-6 fondo">
            <div class="py-4">
                <h3 class="text-center">Registro</h3>
                <div class="form-floating mb-3 position-relative">
                    <input class="form-control" name="nombre" id="nombre" type="text" placeholder="">
                    <label for="nombre"><i class="fa-solid fa-user me-2"></i>Nombre</label>
                </div>
                <div class="form-floating mb-3 position-relative">
                    <input name="apellido" id="apellido" type="text" class="form-control" placeholder="">
                    <label for="apellido"><i class="fa-regular fa-address-book me-2"></i>Apellido</label>
                </div>
                <!-- Reemplazamos el campo de usuario por el nombre de invocador -->
                <div class="form-floating mb-3 position-relative">
                    <input class="form-control" name="nombre_de_invocador" id="nombre_de_invocador" type="text" placeholder="">
                    <label for="nombre_de_invocador"><i class="fa-solid fa-user me-2"></i>Nombre de Invocador</label>
                </div>
                <div class="form-floating mb-3 position-relative">
                    <input name="password" id="password" type="password" class="form-control" placeholder="">
                    <label for="password"><i class="fa-solid fa-lock me-2"></i>Password</label>
                    <i class="fa-solid fa-eye show-password" onclick="togglePassword()"></i>
                </div>
                <button type="button" class="btn btn-primary w-100 mb-3" id="btn_registro"><i class="fa-solid fa-chalkboard-user me-2"></i>Registrar</button>
                <a href="login" class="btn btn-danger w-100" id="btn_regresar"><i class="fa-solid fa-door-open me-2"></i>Regresar a Inicio de sesión</a>
            </div>
        </div>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="./public/js/registrar.js"></script>
