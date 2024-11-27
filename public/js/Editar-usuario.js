document.getElementById('form_editar_usuario').addEventListener('submit', function (e) {
    e.preventDefault();

    let nombre = document.getElementById('nombre').value;
    let apellido = document.getElementById('apellido').value;
    let nombre_de_invocador = document.getElementById('nombre_de_invocador').value;


    if (!nombre || !apellido || !nombre_de_invocador) {
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Por favor complete todos los campos obligatorios.'
        });
        return; 
    }

    
    let formData = new FormData();
    formData.append('nombre', nombre);
    formData.append('apellido', apellido);
    formData.append('nombre_de_invocador', nombre_de_invocador);
    formData.append('metodo', 'editar_usuario'); 

    
    fetch("./app/controller/editar-usuario.php", {
        method: 'POST',
        body: formData
    }).then(response => response.json())
      .then(data => {
          if (data[0] == 1) {
              Swal.fire({
                  icon: 'success',
                  title: 'Éxito',
                  text: 'Datos actualizados correctamente.'
              });
          } else {
              Swal.fire({
                  icon: 'error',
                  title: 'Error',
                  text: 'Error al actualizar los datos: ' + data[1]
              });
          }
      })
      .catch(error => {
          Swal.fire({
              icon: 'error',
              title: 'Error',
              text: 'Error al enviar la solicitud: ' + error
          });
      });
});
