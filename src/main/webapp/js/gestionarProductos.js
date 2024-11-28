document.addEventListener('DOMContentLoaded', function () {
    console.log('DOM fully loaded and parsed');
    
    document.getElementById('productoForm').addEventListener('submit', function (event) {
        event.preventDefault();
        console.log('Form submitted');
        
        const formData = new FormData(this);
        const sku = formData.get('sku');
        formData.set('action', sku ? 'update' : 'create');
        
        console.log('Form data:', Object.fromEntries(formData.entries()));
        
        fetch('ProductoServlet', {
            method: 'POST',
            body: formData
        }).then(response => response.text())
          .then(data => {
              console.log('Response from server:', data);
              location.reload();
          }).catch(error => {
              console.error('Error:', error);
          });
    });

    document.getElementById('eliminarSeleccionados').addEventListener('click', function () {
        console.log('Delete button clicked');
        
        const seleccionados = document.querySelectorAll('.select-product:checked');
        const skus = Array.from(seleccionados).map(input => input.dataset.sku);
        
        console.log('Selected SKUs:', skus);
        
        if (skus.length > 0) {
            fetch('ProductoServlet', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ action: 'delete', skus })
            }).then(response => response.text())
              .then(data => {
                  console.log('Response from server:', data);
                  location.reload();
              }).catch(error => {
                  console.error('Error:', error);
              });
        }
    });
});

function limpiarFormulario() {
    console.log('Form reset');
    document.getElementById('productoForm').reset();
    document.getElementById('sku').value = '';
}

function editarProducto(sku) {
    fetch(`ProductoServlet?sku=${sku}`)
        .then(response => response.json())
        .then(producto => {
            document.getElementById('sku').value = producto.sku;
            document.getElementById('nombre').value = producto.nombre;
            document.getElementById('descripcion').value = producto.descripcion;
            document.getElementById('codigoBarras').value = producto.codigoBarras;
            document.getElementById('categoria').value = producto.categoria;
            document.getElementById('marca').value = producto.marca;
            document.getElementById('precio').value = producto.precio;
            document.getElementById('peso').value = producto.peso;
            // No se puede establecer el valor del input file por razones de seguridad
            document.getElementById('productoModalLabel').textContent = 'Editar Producto';
            new bootstrap.Modal(document.getElementById('productoModal')).show();
        })
        .catch(error => {
            console.error('Error loading product:', error);
        });
}