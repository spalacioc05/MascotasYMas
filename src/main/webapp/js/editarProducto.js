function llenarFormularioEditar(sku) {
    fetch(`ObtenerProductoServlet?sku=${sku}`)
        .then(response => response.json())
        .then(producto => {
            document.getElementById('editarSku').value = producto.sku;
            document.getElementById('editarNombre').value = producto.nombre;
            document.getElementById('editarDescripcion').value = producto.descripcion;
            document.getElementById('editarCodigoBarras').value = producto.codigoBarras;
            document.getElementById('editarCategoria').value = producto.categoria;
            document.getElementById('editarMarca').value = producto.marca;
            document.getElementById('editarPrecio').value = producto.precio;
            document.getElementById('editarPeso').value = producto.peso;
        });
}