
const consulta = () => {
    let data = new FormData();
    data.append("metodo", "obtener_datos");
    fetch("./app/controller/Items.php", {
        method: "POST",
        body: data
    })
    .then(respuesta => respuesta.json())
    .then(respuesta => {
        let contenido = ``,
            i = 1;
        respuesta.map(item => {
            contenido += `
                <tr>
                    <th>${i++}</th>
                    <td>${item['nombre_item']}</td>
                    <td>${item['tipo']}</td>
                    <td>${item['precio']}</td>
                    <td>${item['descripcion']}</td>
                    <td><img src="${item['imagen_url']}" alt="${item['nombre_item']}" class="img-thumbnail" style="max-width: 50px;"></td>
                    <td>
                        <button type="button" class="btn btn-warning" onclick="precargar(${item['id_item']})"><i class="fa-solid fa-pen-to-square"></i></button>
                        <button type="button" class="btn btn-danger" onclick="eliminar(${item['id_item']})"><i class="fa-solid fa-trash-can"></i></button>
                    </td>
                </tr>
            `;
        });
        $("#contenido_items").html(contenido);
        $('#myTable').DataTable();
    });
};


const precargar = (id) => {
    let data = new FormData();
    data.append("id_item", id);
    data.append("metodo", "precargar_datos");
    fetch("./app/controller/Items.php", {
        method: "POST",
        body: data
    })
    .then(respuesta => respuesta.json())
    .then(respuesta => {
        $("#edit_nombre_item").val(respuesta['nombre_item']);
        $("#edit_tipo").val(respuesta['tipo']);
        $("#edit_precio").val(respuesta['precio']);
        $("#edit_descripcion").val(respuesta['descripcion']);
        $("#edit_imagen_url").val(respuesta['imagen_url']);
        $("#id_item_act").val(respuesta['id_item']);
        $("#editarModal").modal('show');
    });
};


const actualizar = () => {
    const nombre_item = $("#edit_nombre_item").val().trim();
    const tipo = $("#edit_tipo").val().trim();
    const precio = $("#edit_precio").val().trim();
    const descripcion = $("#edit_descripcion").val().trim();
    const imagen_url = $("#edit_imagen_url").val().trim();

    if (!nombre_item || !tipo || !precio || !descripcion || !imagen_url) {
        Swal.fire({
            title: '¡Error!',
            text: 'Todos los campos son obligatorios.',
            icon: 'error',
        });
        return;
    }

    let data = new FormData();
    data.append("id_item", $("#id_item_act").val());
    data.append("nombre_item", nombre_item);
    data.append("tipo", tipo);
    data.append("precio", precio);
    data.append("descripcion", descripcion);
    data.append("imagen_url", imagen_url);
    data.append("metodo", "actualizar_datos");

    fetch("./app/controller/Items.php", {
        method: "POST",
        body: data
    })
    .then(respuesta => respuesta.json())
    .then(respuesta => {
        if (respuesta[0] == 1) {
            Swal.fire('¡Éxito!', respuesta[1], 'success');
            consulta();
            $("#editarModal").modal('hide');
        } else {
            Swal.fire('¡Error!', respuesta[1], 'error');
        }
    });
};

const agregar = () => {
    const nombre_item = $("#nombre_item").val().trim();
    const tipo = $("#tipo").val().trim();
    const precio = $("#precio").val().trim();
    const descripcion = $("#descripcion").val().trim();
    const imagen_url = $("#imagen_url").val().trim();

    if (!nombre_item || !tipo || !precio || !descripcion || !imagen_url) {
        Swal.fire({
            title: '¡Error!',
            text: 'Todos los campos son obligatorios.',
            icon: 'error',
        });
        return;
    }

    let data = new FormData();
    data.append("nombre_item", nombre_item);
    data.append("tipo", tipo);
    data.append("precio", precio);
    data.append("descripcion", descripcion);
    data.append("imagen_url", imagen_url);
    data.append("metodo", "insertar_datos");

    fetch("./app/controller/Items.php", {
        method: "POST",
        body: data
    })
    .then(respuesta => respuesta.json())
    .then(respuesta => {
        if (respuesta[0] == 1) {
            Swal.fire('¡Éxito!', respuesta[1], 'success');
            consulta();
            $("#agregarModal").modal('hide');
        } else {
            Swal.fire('¡Error!', respuesta[1], 'error');
        }
    });
};


const eliminar = (id) => {
    Swal.fire({
        title: '¿Estás seguro?',
        text: 'Quieres eliminar este ítem?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Sí, eliminar',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.isConfirmed) {
            let data = new FormData();
            data.append("id_item", id);
            data.append("metodo", "eliminar_datos");
            fetch("./app/controller/Items.php", {
                method: "POST",
                body: data
            })
            .then(respuesta => respuesta.json())
            .then(respuesta => {
                if (respuesta[0] == 1) {
                    Swal.fire('¡Eliminado!', respuesta[1], 'success');
                    consulta();
                } else {
                    Swal.fire('¡Error!', respuesta[1], 'error');
                }
            });
        }
    });
};


$('#btn_actualizar').on('click', () => {
    actualizar();
});

$('#btn_agregar').on('click', () => {
    agregar();
});


consulta();
