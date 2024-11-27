
const consultaRegiones = () => {
    let data = new FormData();
    data.append("metodo", "obtener_regiones");
    fetch("./app/controller/regiones.php", {
        method: "POST",
        body: data,
    })
        .then((respuesta) => respuesta.json())
        .then((respuesta) => {
            let contenido = ``;
            respuesta.map((region) => {
                contenido += `
                    <div class="col-md-4 mb-3">
                        <div class="card text-white bg-dark">
                            <img src="${region['imagen_url']}" class="card-img-top" alt="Imagen de ${region['nombre_region']}" style="height: 200px; object-fit: cover;">
                            <div class="card-body">
                                <h5 class="card-title">${region['nombre_region']}</h5>
                                <p class="card-text">${region['descripcion']}</p>
                            </div>
                        </div>
                    </div>
                `;
            });
            $("#contenido_regiones").html(contenido);
        });
};


$(document).ready(function() {
    consultaRegiones();
});
