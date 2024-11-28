/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.spalacioc.mascotasymas.servlet;

import com.spalacioc.mascotasymas.dao.PersonaDao;
import com.spalacioc.mascotasymas.model.Persona;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author spala
 */

@WebServlet("/Registrar")
public class RegistrarServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr = request.getParameter("id");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String fechaNacimientoStr = request.getParameter("fechaNacimiento");
        String clave = request.getParameter("clave");
        String rol = "cliente"; // Asignar rol por defecto

        // Validar que todos los campos requeridos no sean nulos o vacíos
        if (idStr == null || nombres == null || apellidos == null || correo == null || telefono == null || direccion == null || fechaNacimientoStr == null || clave == null ||
            idStr.isEmpty() || nombres.isEmpty() || apellidos.isEmpty() || correo.isEmpty() || telefono.isEmpty() || direccion.isEmpty() || fechaNacimientoStr.isEmpty() || clave.isEmpty()) {
            request.setAttribute("mensaje", "Todos los campos son obligatorios.");
            request.getRequestDispatcher("registro.jsp").forward(request, response);
            return;
        }

        int id = 0;
        try {
            id = Integer.parseInt(idStr);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            request.setAttribute("mensaje", "ID inválido.");
            request.getRequestDispatcher("registro.jsp").forward(request, response);
            return;
        }

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date fechaNacimiento = null;
        try {
            fechaNacimiento = sdf.parse(fechaNacimientoStr);
        } catch (ParseException e) {
            e.printStackTrace();
            request.setAttribute("mensaje", "Formato de fecha incorrecto.");
            request.getRequestDispatcher("registro.jsp").forward(request, response);
            return;
        }

        Persona persona = new Persona(id, nombres, apellidos, correo, telefono, direccion, fechaNacimiento, clave, rol);
        PersonaDao personaDao = new PersonaDao();
        boolean registrado = personaDao.registrarPersona(persona);

        if (registrado) {
            request.setAttribute("mensaje", "Registro exitoso.");
        } else {
            request.setAttribute("mensaje", "Error en el registro.");
        }
        request.getRequestDispatcher("registro.jsp").forward(request, response);
    }
}