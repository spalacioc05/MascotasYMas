let skuAEliminar;

function confirmarEliminar(sku) {
    skuAEliminar = sku;
}

function eliminarProducto() {
    window.location.href = 'EliminarProductoServlet?sku=' + skuAEliminar;
}