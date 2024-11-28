package com.spalacioc.mascotasymas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.spalacioc.mascotasymas.dao.ProductoDAO;
import com.spalacioc.mascotasymas.model.Producto;

@WebServlet("/ObtenerProductoServlet")
public class ObtenerProductoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sku = Integer.parseInt(request.getParameter("sku"));
        ProductoDAO productoDAO = new ProductoDAO();
        Producto producto = productoDAO.obtenerProductoPorSku(sku);

        String json = new Gson().toJson(producto);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }
}