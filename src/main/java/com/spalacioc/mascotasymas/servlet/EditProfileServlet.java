package com.spalacioc.mascotasymas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spalacioc.mascotasymas.dao.PersonaDao;
import com.spalacioc.mascotasymas.model.Persona;

@WebServlet("/EditProfileServlet")
public class EditProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Persona usuario = (Persona) session.getAttribute("usuario");
        PersonaDao personaDao = new PersonaDao();

        if (usuario != null && "administrador".equals(usuario.getRol())) {
            usuario.setNombres(request.getParameter("nombres"));
            usuario.setApellidos(request.getParameter("apellidos"));
            usuario.setCorreo(request.getParameter("correo"));
            usuario.setTelefono(request.getParameter("telefono"));
            usuario.setDireccion(request.getParameter("direccion"));
            usuario.setFechaNacimiento(java.sql.Date.valueOf(request.getParameter("fechaNacimiento")));

            personaDao.actualizarPersona(usuario);
            session.setAttribute("usuario", usuario);
            response.sendRedirect("AdminProfileServlet?message=Perfil actualizado exitosamente");
        } else {
            response.sendRedirect("login.jsp?error=Acceso denegado. Solo administradores pueden acceder a esta página.");
        }
    }
}