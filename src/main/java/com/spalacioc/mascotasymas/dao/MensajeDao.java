package com.spalacioc.mascotasymas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.spalacioc.mascotasymas.model.Mensaje;

public class MensajeDao {

    public void guardarMensaje(Mensaje mensaje) {
        String sql = "INSERT INTO mensajes (nombres, apellidos, correo, telefono, mensaje) VALUES (?, ?, ?, ?, ?)";

        try (Connection conexion = ConexionBD.getConnection();
             PreparedStatement ps = conexion.prepareStatement(sql)) {

            ps.setString(1, mensaje.getNombres());
            ps.setString(2, mensaje.getApellidos());
            ps.setString(3, mensaje.getCorreo());
            ps.setString(4, mensaje.getTelefono());
            ps.setString(5, mensaje.getMensaje());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}