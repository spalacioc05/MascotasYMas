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

@WebServlet("/ChangeClientPasswordServlet")
public class ChangeClientPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Persona usuario = (Persona) session.getAttribute("usuario");
        PersonaDao personaDao = new PersonaDao();

        if (usuario != null && "cliente".equals(usuario.getRol())) {
            String currentPassword = request.getParameter("currentPassword");
            String newPassword = request.getParameter("newPassword");
            String confirmPassword = request.getParameter("confirmPassword");

            if (usuario.getClave().equals(currentPassword) && newPassword.equals(confirmPassword)) {
                usuario.setClave(newPassword);
                personaDao.actualizarClave(usuario);
                session.setAttribute("usuario", usuario);
                response.sendRedirect("ClientProfileServlet?message=Contraseña actualizada exitosamente");
            } else {
                response.sendRedirect("ClientProfileServlet?error=Error al cambiar la contraseña");
            }
        } else {
            response.sendRedirect("login.jsp?error=Acceso denegado. Solo clientes pueden acceder a esta página.");
        }
    }
}