package com.spalacioc.mascotasymas.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.spalacioc.mascotasymas.dao.ProductoDAO;
import com.spalacioc.mascotasymas.model.Producto;

@WebServlet("/EditarProductoServlet")
public class EditarProductoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sku = Integer.parseInt(request.getParameter("sku"));
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String codigoBarras = request.getParameter("codigoBarras");
        String categoria = request.getParameter("categoria");
        String marca = request.getParameter("marca");
        double precio = Double.parseDouble(request.getParameter("precio"));
        String peso = request.getParameter("peso");

        Producto producto = new Producto(sku, nombre, descripcion, codigoBarras, categoria, marca, precio, peso, null);
        ProductoDAO productoDAO = new ProductoDAO();
        productoDAO.editarProducto(producto);

        response.sendRedirect("gestionarProductos.jsp");
    }
}