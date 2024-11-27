
const consulta = () => {
    let data = new FormData();
    data.append("metodo", "obtener_campeones");
    fetch("./app/controller/campeones.php", {
        method: "POST",
        body: data,
    })
        .then((respuesta) => respuesta.json())
        .then((respuesta) => {
            let contenido = ``;
            respuesta.map((campeon) => {
                contenido += `
                    <div class="col-md-4 mb-3">
                        <div class="card text-white bg-dark">
                            <img src="${campeon['image_url']}" class="card-img-top" alt="Imagen de ${campeon['nombre']}" style="height: 200px; object-fit: cover;">
                            <div class="card-body">
                                <h5 class="card-title">${campeon['nombre']}</h5>
                                <p class="card-text"><strong>Rol:</strong> ${campeon['rol']}</p>
                                <p class="card-text"><strong>Dificultad:</strong> ${campeon['difficultad']}</p>
                                <button type="button" class="btn btn-warning btn-sm" onclick="precargar(${campeon['id_champion']})">Editar</button>
                                <button type="button" class="btn btn-danger btn-sm" onclick="eliminar(${campeon['id_champion']})">Eliminar</button>
                            </div>
                        </div>
                    </div>
                `;
            });
            $("#contenido_campeones").html(contenido);
        });
};


const agregar = () => {
    const nombre = $("#nombre").val().trim();
    const rol = $("#rol").val().trim();
    const difficultad = $("#difficultad").val().trim();
    const imagen = $("#imagen").val().trim();

   
    if (difficultad < 1 || difficultad > 10 || isNaN(difficultad)) {
        Swal.fire("Error", "La dificultad debe estar entre 1 y 10.", "error");
        return;
    }

    if (!nombre || !rol || !difficultad || !imagen) {
        Swal.fire("Error", "Todos los campos son obligatorios.", "error");
        return;
    }

    let data = new FormData();
    data.append("metodo", "agregar_campeon");
    data.append("nombre", nombre);
    data.append("rol", rol);
    data.append("difficultad", difficultad);
    data.append("image_url", imagen);

    fetch("./app/controller/campeones.php", {
        method: "POST",
        body: data,
    })
    .then((respuesta) => respuesta.json())
    .then((respuesta) => {
        if (respuesta[0] === 1) {
            Swal.fire("¡Éxito!", respuesta[1], "success");
            consulta();
            $("#agregarModal").modal("show");
        } else {
            Swal.fire("Error", respuesta[1], "error");
        }
    });
};



const precargar = (id) => {
    let data = new FormData();
    data.append("metodo", "precargar_campeon");
    data.append("id_champion", id);

    fetch("./app/controller/campeones.php", {
        method: "POST",
        body: data,
    })
        .then((respuesta) => respuesta.json())
        .then((respuesta) => {
            $("#edit_nombre").val(respuesta['nombre']);
            $("#edit_rol").val(respuesta['rol']);
            $("#edit_difficultad").val(respuesta['difficultad']);
            $("#edit_imagen").val(respuesta['image_url']);
            $("#id_campeon_act").val(respuesta['id']);
            $("#editarModal").modal("show");
        });
};


const actualizar = () => {
    const id = $("#id_campeon_act").val().trim();
    const nombre = $("#edit_nombre").val().trim();
    const rol = $("#edit_rol").val().trim();
    const difficultad = $("#edit_difficultad").val().trim();
    const imagen = $("#edit_imagen").val().trim();

    
    if (difficultad < 1 || difficultad > 10 || isNaN(difficultad)) {
        Swal.fire("Error", "La dificultad debe estar entre 1 y 10.", "error");
        return;
    }

    if (!nombre || !rol || !difficultad || !imagen) {
        Swal.fire("Error", "Todos los campos son obligatorios.", "error");
        return;
    }

    let data = new FormData();
    data.append("metodo", "actualizar_campeon");
    data.append("id_champion", id);
    data.append("nombre", nombre);
    data.append("rol", rol);
    data.append("difficultad", difficultad);
    data.append("image_url", imagen);

    fetch("./app/controller/campeones.php", {
        method: "POST",
        body: data,
    })
    .then((respuesta) => respuesta.json())
    .then((respuesta) => {
        if (respuesta[0] === 1) {
            Swal.fire("¡Éxito!", respuesta[1], "success");
            consulta();
            $("#editarModal").modal("hide");
        } else {
            Swal.fire("Error", respuesta[1], "error");
        }
    });
};


const eliminar = (id) => {
    Swal.fire({
        title: "¿Estás seguro?",
        text: "¡Este cambio no se podrá deshacer!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonText: "Sí, eliminar",
        cancelButtonText: "Cancelar",
    }).then((result) => {
        if (result.isConfirmed) {
            let data = new FormData();
            data.append("metodo", "eliminar_campeon");
            data.append("id_champion", id);
            fetch("./app/controller/campeones.php", {
                method: "POST",
                body: data,
            })
                .then((respuesta) => respuesta.json())
                .then((respuesta) => {
                    if (respuesta[0] === 1) {
                        Swal.fire("¡Éxito!", respuesta[1], "success");
                        consulta();
                    } else {
                        Swal.fire("Error", respuesta[1], "error");
                    }
                });
        }
    });
};

$(document).ready(function() {
    consulta();

    $("#btn_agregar").click(function() {
        agregar();
    });

    $("#btn_actualizar").click(function() {
        actualizar();
    });
});
