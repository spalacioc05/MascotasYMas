/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.spalacioc.mascotasymas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.spalacioc.mascotasymas.model.Persona;

/**
 *
 * @author spala
 */

public class PersonaDao {
    public boolean registrarPersona(Persona persona) {
        String sql = "INSERT INTO personas (id, nombres, apellidos, correo, telefono, direccion, fechaNacimiento, clave, rol) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, persona.getId());
            stmt.setString(2, persona.getNombres());
            stmt.setString(3, persona.getApellidos());
            stmt.setString(4, persona.getCorreo());
            stmt.setString(5, persona.getTelefono());
            stmt.setString(6, persona.getDireccion());
            stmt.setDate(7, new java.sql.Date(persona.getFechaNacimiento().getTime()));
            stmt.setString(8, persona.getClave());
            stmt.setString(9, persona.getRol());
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Persona verificarCredenciales(int id, String clave) {
        String sql = "SELECT * FROM personas WHERE id = ? AND clave = ?";
        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.setString(2, clave);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Persona persona = new Persona();
                persona.setId(rs.getInt("id"));
                persona.setNombres(rs.getString("nombres"));
                persona.setApellidos(rs.getString("apellidos"));
                persona.setCorreo(rs.getString("correo"));
                persona.setTelefono(rs.getString("telefono"));
                persona.setDireccion(rs.getString("direccion"));
                persona.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                persona.setClave(rs.getString("clave"));
                persona.setRol(rs.getString("rol"));
                return persona;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean actualizarPersona(Persona persona) {
        String sql = "UPDATE personas SET nombres = ?, apellidos = ?, correo = ?, telefono = ?, direccion = ?, fechaNacimiento = ? WHERE id = ?";
        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, persona.getNombres());
            stmt.setString(2, persona.getApellidos());
            stmt.setString(3, persona.getCorreo());
            stmt.setString(4, persona.getTelefono());
            stmt.setString(5, persona.getDireccion());
            stmt.setDate(6, new java.sql.Date(persona.getFechaNacimiento().getTime()));
            stmt.setInt(7, persona.getId());
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean actualizarClave(Persona persona) {
        String sql = "UPDATE personas SET clave = ? WHERE id = ?";
        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, persona.getClave());
            stmt.setInt(2, persona.getId());
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean eliminarPersona(int id) {
        String sql = "DELETE FROM personas WHERE id = ?";
        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }


}