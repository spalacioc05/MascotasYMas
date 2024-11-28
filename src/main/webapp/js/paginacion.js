document.addEventListener('DOMContentLoaded', function () {
    const productosPorPaginaSelect = document.getElementById('productosPorPagina');
    const prevPageBtn = document.getElementById('prevPage');
    const nextPageBtn = document.getElementById('nextPage');
    const productosTabla = document.getElementById('productosTabla');
    const pageInfo = document.getElementById('page-info');

    let productos = Array.from(productosTabla.querySelectorAll('tbody tr'));
    let paginaActual = 1;
    let productosPorPagina = parseInt(productosPorPaginaSelect.value);
    let totalPages = Math.ceil(productos.length / productosPorPagina);

    function showPage(page) {
        const tbody = productosTabla.querySelector('tbody');
        tbody.innerHTML = ''; // Limpiar el contenido del tbody

        const start = (page - 1) * productosPorPagina;
        const end = start + productosPorPagina;
        const productosPagina = productos.slice(start, end);

        productosPagina.forEach(producto => {
            tbody.appendChild(producto);
        });

        pageInfo.textContent = `Página ${page} de ${totalPages}`;
    }

    productosPorPaginaSelect.addEventListener('change', function () {
        productosPorPagina = parseInt(this.value);
        totalPages = Math.ceil(productos.length / productosPorPagina);
        paginaActual = 1;
        showPage(paginaActual);
    });

    prevPageBtn.addEventListener('click', function (e) {
        e.preventDefault();
        if (paginaActual > 1) {
            paginaActual--;
            showPage(paginaActual);
        }
    });

    nextPageBtn.addEventListener('click', function (e) {
        e.preventDefault();
        if (paginaActual < totalPages) {
            paginaActual++;
            showPage(paginaActual);
        }
    });

    showPage(paginaActual);
});