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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("id");
        String clave = request.getParameter("clave");

        if (idStr != null && clave != null) {
            int id = Integer.parseInt(idStr);
            PersonaDao personaDao = new PersonaDao();
            Persona persona = personaDao.verificarCredenciales(id, clave);

            if (persona != null) {
                HttpSession session = request.getSession();
                session.setAttribute("usuario", persona);
                if ("administrador".equals(persona.getRol())) {
                    response.sendRedirect("AdminProfileServlet");
                } else if ("cliente".equals(persona.getRol())) {
                    response.sendRedirect("ClientProfileServlet");
                } else {
                    response.sendRedirect("login.jsp?error=Rol no reconocido");
                }
            } else {
                response.sendRedirect("login.jsp?error=Credenciales inválidas");
            }
        } else {
            response.sendRedirect("login.jsp?error=Por favor ingrese todos los campos");
        }
    }
}