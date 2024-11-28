document.getElementById('agregarProductoForm').addEventListener('submit', function(event) {
    event.preventDefault();

    // Crear un FormData con los datos del formulario
    const formData = new FormData(this);

    // Enviar los datos al servlet usando fetch
    fetch('AgregarProductoServlet', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        alert(data);
        if (data.includes("Producto agregado exitosamente")) {
            // Obtener los valores del formulario
            const sku = document.getElementById('sku').value;
            const nombre = document.getElementById('nombre').value;
            const descripcion = document.getElementById('descripcion').value;
            const codigoBarras = document.getElementById('codigoBarras').value;
            const categoria = document.getElementById('categoria').value;
            const marca = document.getElementById('marca').value;
            const precio = document.getElementById('precio').value;
            const peso = document.getElementById('peso').value;
            const imagen = document.getElementById('imagen').files[0];

            // Crear una URL para la imagen
            const reader = new FileReader();
            reader.onload = function(e) {
                const imagenURL = e.target.result;

                // Crear una nueva fila en la tabla
                const nuevaFila = `
                    <tr>
                        <td><input type="checkbox" class="selectRow"></td>
                        <td>${sku}</td>
                        <td>${nombre}</td>
                        <td>${descripcion}</td>
                        <td>${codigoBarras}</td>
                        <td>${categoria}</td>
                        <td>${marca}</td>
                        <td>$${precio}</td>
                        <td>${peso}</td>
                        <td><img src="${imagenURL}" alt="Imagen del producto" width="50"></td>
                    </tr>
                `;

                // Agregar la nueva fila a la tabla
                document.getElementById('productosTabla').insertAdjacentHTML('beforeend', nuevaFila);

                // Cerrar el modal
                const modal = bootstrap.Modal.getInstance(document.getElementById('agregarProductoModal'));
                modal.hide();

                // Limpiar el formulario
                document.getElementById('agregarProductoForm').reset();
                document.getElementById('imagenPreview').style.display = 'none';
            };
            reader.readAsDataURL(imagen);
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Error al agregar el producto');
    });
});

document.getElementById('imagen').addEventListener('change', function() {
    const file = this.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            document.getElementById('imagenPreview').src = e.target.result;
            document.getElementById('imagenPreview').style.display = 'block';
        };
        reader.readAsDataURL(file);
    }
});