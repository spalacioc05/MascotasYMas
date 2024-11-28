/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// filter.js
document.addEventListener('DOMContentLoaded', () => {
    const filterButtons = document.querySelectorAll('.btn-outline-dark');
    const products = document.querySelectorAll('.product');

    filterButtons.forEach(button => {
        button.addEventListener('click', () => {
            const category = button.getAttribute('data-category').toLowerCase();
            products.forEach(product => {
                if (category === 'todos' || product.getAttribute('data-category').toLowerCase() === category) {
                    product.style.display = 'block';
                } else {
                    product.style.display = 'none';
                }
            });

            // Dispara un evento personalizado para actualizar la paginación
            const event = new CustomEvent('filterApplied', { detail: { category } });
            document.dispatchEvent(event);
        });
    });
});