<?php
    if(!isset($_SESSION['usuario'])){
        header("location:login");
        exit();
    }
    include 'navegacion.php';
?> 

<link rel="stylesheet" href="<?=CSS.'campeones.css'?>">

<div class="container mt-5">
    <div class="row justify-content-center bg-card">
        <div class="col-10 text-center mt-3">
            <h2 class="titulo-campeon">Regiones</h2>
        </div>
    </div>

    
    <div class="row" id="contenido_regiones">
        
    </div>
</div>

<script src="./public/js/regiones.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
