<?php
    if(!isset($_SESSION['usuario'])){
        header("location:login");
        exit();
    }
    include 'navegacion.php';
?> 

<link rel="stylesheet" href="<?=CSS.'items.css'?>">

<div class="container mt-5">
    <div class="row justify-content-center bg-card">
        <div class="col-10 text-center mt-3">
            <h2 class="">Lista de items</h2>
        </div>
        <div class="col-10 text-end mt-3">
            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#agregarModal">Añadir item</button>
            <table id="myTable" class="display table text-white">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Tipo</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Imagen del Item</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody id="contenido_items">
                </tbody>
            </table>
        </div>
        <div class="col-10 text-end">
            <hr class="text-primary">
            <p class="lead"></p>
        </div>
    </div>
</div>


<div class="modal fade" id="editarModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Actualizar item</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <input type="hidden" id="id_item_act">
                <div class="form-floating mb-3">
                    <input class="form-control" id="edit_nombre_item" type="text" placeholder="Nombre del item">
                    <label for="edit_nombre_item">Nombre del item</label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="edit_tipo" type="text" placeholder="Tipo">
                    <label for="edit_tipo">Tipo</label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="edit_precio" type="number" placeholder="Precio">
                    <label for="edit_precio">Precio</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" id="edit_descripcion" placeholder="Descripción"></textarea>
                    <label for="edit_descripcion">Descripción</label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="edit_imagen_url" type="text" placeholder="URL de la imagen">
                    <label for="edit_imagen_url">URL de la imagen</label>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary btn-sm" id="btn_actualizar">Actualizar</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="agregarModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Agregar item</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="form-floating mb-3">
                    <input class="form-control" id="nombre_item" type="text" placeholder="Nombre del item">
                    <label for="nombre_item">Nombre del item</label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="tipo" type="text" placeholder="Tipo">
                    <label for="tipo">Tipo</label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="precio" type="number" placeholder="Precio">
                    <label for="precio">Precio</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" id="descripcion" placeholder="Descripción"></textarea>
                    <label for="descripcion">Descripción</label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="imagen_url" type="text" placeholder="URL de la imagen">
                    <label for="imagen_url">URL de la imagen</label>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary btn-sm" id="btn_agregar">Añadir</button>
            </div>
        </div>
    </div>
</div>
<script src="./public/js/Item.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

