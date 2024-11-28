package com.spalacioc.mascotasymas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spalacioc.mascotasymas.model.Persona;

@WebServlet("/AdminProfileServlet")
public class AdminProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Persona usuario = (Persona) session.getAttribute("usuario");

        if (usuario != null && "administrador".equals(usuario.getRol())) {
            request.setAttribute("usuario", usuario);
            request.getRequestDispatcher("perfilAdmin.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp?error=Acceso denegado. Solo administradores pueden acceder a esta página.");
        }
    }
}