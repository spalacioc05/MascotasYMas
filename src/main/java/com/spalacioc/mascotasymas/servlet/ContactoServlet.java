package com.spalacioc.mascotasymas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spalacioc.mascotasymas.dao.MensajeDao;
import com.spalacioc.mascotasymas.model.Mensaje;

@WebServlet("/ContactoServlet")
public class ContactoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String mensaje = request.getParameter("mensaje");

        Mensaje nuevoMensaje = new Mensaje();
        nuevoMensaje.setNombres(nombres);
        nuevoMensaje.setApellidos(apellidos);
        nuevoMensaje.setCorreo(correo);
        nuevoMensaje.setTelefono(telefono);
        nuevoMensaje.setMensaje(mensaje);

        MensajeDao mensajeDao = new MensajeDao();
        mensajeDao.guardarMensaje(nuevoMensaje);

        response.sendRedirect("contact.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}