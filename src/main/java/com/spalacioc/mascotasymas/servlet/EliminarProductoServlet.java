package com.spalacioc.mascotasymas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spalacioc.mascotasymas.dao.ProductoDAO;

@WebServlet("/EliminarProductoServlet")
public class EliminarProductoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sku = Integer.parseInt(request.getParameter("sku"));
        ProductoDAO productoDAO = new ProductoDAO();
        productoDAO.eliminarProducto(sku);
        response.sendRedirect("gestionarProductos.jsp");
    }
}