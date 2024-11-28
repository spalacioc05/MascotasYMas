/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

// buscarProducto.js
document.addEventListener('DOMContentLoaded', () => {
    const buscarProductoInput = document.getElementById('buscarProducto');
    const productosTabla = document.getElementById('productosTabla');

    buscarProductoInput.addEventListener('input', () => {
        const filter = buscarProductoInput.value.toLowerCase();
        const rows = productosTabla.getElementsByTagName('tr');

        Array.from(rows).forEach(row => {
            const cells = row.getElementsByTagName('td');
            const match = Array.from(cells).some(cell => cell.innerText.toLowerCase().includes(filter));
            row.style.display = match ? '' : 'none';
        });
    });
});
