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
            <h2 class="titulo-campeon">Lista de Campeones</h2>
        </div>
        <div class="col-10 text-end mt-3">
            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#agregarModal">
                <i class="fas fa-plus-circle"></i> Añadir Campeón
            </button>
        </div>
        <div class="col-10 text-end">
            <hr class="text-primary">
        </div>
    </div>

    
    <div class="row" id="contenido_campeones">

    </div>
</div>


<div class="modal fade" id="agregarModal" tabindex="-1" aria-labelledby="agregarModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="agregarModalLabel">Añadir Nuevo Campeón</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="form_agregar_campeon">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" placeholder="Nombre del campeón">
                    </div>
                    <div class="mb-3">
                        <label for="rol" class="form-label">Rol</label>
                        <input type="text" class="form-control" id="rol" placeholder="Rol del campeón">
                    </div>
                    <div class="mb-3">
    <label for="difficultad" class="form-label">Dificultad</label>
    <input type="number" class="form-control" id="difficultad" placeholder="Dificultad del campeón" min="1" max="10">
</div>

                    <div class="mb-3">
                        <label for="imagen" class="form-label">Imagen URL</label>
                        <input type="text" class="form-control" id="imagen" placeholder="URL de la imagen">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btn_agregar">Añadir</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="editarModal" tabindex="-1" aria-labelledby="editarModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editarModalLabel">Editar Campeón</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="form_editar_campeon">
                    <input type="hidden" id="id_campeon_act">
                    <div class="mb-3">
                        <label for="edit_nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="edit_nombre" placeholder="Nombre del campeón">
                    </div>
                    <div class="mb-3">
                        <label for="edit_rol" class="form-label">Rol</label>
                        <input type="text" class="form-control" id="edit_rol" placeholder="Rol del campeón">
                    </div>
                    <div class="mb-3">
                        <label for="edit_difficultad" class="form-label">Dificultad</label>
                        <input type="number" class="form-control" id="edit_difficultad" placeholder="Dificultad del campeón" min="1" max="10">
                    </div>
                    <div class="mb-3">
                        <label for="edit_imagen" class="form-label">Imagen URL</label>
                        <input type="text" class="form-control" id="edit_imagen" placeholder="URL de la imagen">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" id="btn_actualizar">Actualizar</button>
            </div>
        </div>
    </div>
</div>

<script src="./public/js/campeones.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
