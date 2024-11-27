<?php
    if(isset($_REQUEST['view'])){
        $vista = $_REQUEST['view'];
    }else{
        $vista = "inicio";
    }
    switch($vista){
        case "inicio":{
            require_once './views/Inicio.php';
            break;
        }
        case "login":{
            require_once './views/Login.php';
            break;
        }
        case "registro":{
            require_once './views/Registro.php';
            break;
        }
        case "campeones":{
            require_once './views/Campeones.php';
            break;
        }case "items":{
            require_once './views/Items.php';
            break;
        }
        case "regiones":{
            require_once './views/Regiones.php';
            break;
        }
        case "editar-usuario":{
            require_once './views/editar.php';
            break;
        }
        default:{
            require_once './views/error404.php';
            break;
        }
    }
?> 