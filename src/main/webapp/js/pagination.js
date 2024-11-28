document.addEventListener('DOMContentLoaded', function () {
    const productsPerPage = 16;
    let currentPage = 1;
    let filteredProducts = Array.from(document.querySelectorAll('.product'));
    let totalPages = Math.ceil(filteredProducts.length / productsPerPage);

    function showPage(page) {
        filteredProducts.forEach((product, index) => {
            product.style.display = (index >= (page - 1) * productsPerPage && index < page * productsPerPage) ? 'block' : 'none';
        });
        document.getElementById('page-info').textContent = `Página ${page} de ${totalPages}`;
    }

    document.getElementById('prev-page').addEventListener('click', function () {
        if (currentPage > 1) {
            currentPage--;
            showPage(currentPage);
        }
    });

    document.getElementById('next-page').addEventListener('click', function () {
        if (currentPage < totalPages) {
            currentPage++;
            showPage(currentPage);
        }
    });

    // Escucha el evento personalizado para actualizar la paginación
    document.addEventListener('filterApplied', function (event) {
        const category = event.detail.category;
        filteredProducts = Array.from(document.querySelectorAll('.product')).filter(product => {
            return category === 'todos' || product.getAttribute('data-category').toLowerCase() === category;
        });
        totalPages = Math.ceil(filteredProducts.length / productsPerPage);
        currentPage = 1;
        showPage(currentPage);
    });

    showPage(currentPage);
});