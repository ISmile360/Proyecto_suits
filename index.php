<?php 
    require_once "./app/config/dependencias.php";
    session_start();
    require_once "./app/config/rutas.php";
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?=CSS.'b5.css'?>">
    <link rel="stylesheet" href="<?=CSS.'font_awesome/all.css'?>">
    <link rel="stylesheet" href="<?=CSS.'dt.css'?>">
    <script src="<?=JS."font_awesome/all.js"?>"></script>
    <script src="<?=JS."jquery.js"?>"></script>
    <script src="<?=JS."sweetAlert.js"?>"></script>
    <script src="<?=JS."b5.js"?>"></script>
    <script src="<?=JS."dt.js"?>"></script>
    <title>League of Legends</title>
</head>

<body>
    <?php require_once './app/config/Router.php';?>  
    <script src="./public/js/sesion.js"></script>
    
</body>
</html>