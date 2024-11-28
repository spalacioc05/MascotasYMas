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

@WebServlet("/DeleteClientAccountServlet")
public class DeleteClientAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Persona usuario = (Persona) session.getAttribute("usuario");
        PersonaDao personaDao = new PersonaDao();

        if (usuario != null && "cliente".equals(usuario.getRol())) {
            personaDao.eliminarPersona(usuario.getId());
            session.invalidate();
            response.sendRedirect("login.jsp?message=Cuenta eliminada exitosamente");
        } else {
            response.sendRedirect("login.jsp?error=Acceso denegado. Solo clientes pueden acceder a esta página.");
        }
    }
}