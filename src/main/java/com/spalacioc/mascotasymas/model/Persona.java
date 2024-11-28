/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.spalacioc.mascotasymas.model;

import java.util.Date;

/**
 *
 * @author spala
 */
public class Persona {
    private int id;
    private String nombres;
    private String apellidos;
    private String correo;
    private String telefono;
    private String direccion;
    private Date fechaNacimiento;
    private String clave;
    private String rol;

    public Persona() {
    }

    public Persona(int id, String nombres, String apellidos, String correo, String telefono, String direccion, Date fechaNacimiento, String clave, String rol) {
        this.id = id;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.correo = correo;
        this.telefono = telefono;
        this.direccion = direccion;
        this.fechaNacimiento = fechaNacimiento;
        this.clave = clave;
        this.rol = rol;
    }

    // Getters y Setters
    public int getId() { 
        return id; 
    }
    public void setId(int id) { 
        this.id = id; 
    }

    public String getNombres() { 
        return nombres; 
    }
    public void setNombres(String nombres) { 
        this.nombres = nombres; 
    }

    public String getApellidos() { 
        return apellidos; 
    }
    public void setApellidos(String apellidos) { 
        this.apellidos = apellidos; 
    }

    public String getCorreo() { 
        return correo; 
    }
    public void setCorreo(String correo) { 
        this.correo = correo; 
    }

    public String getTelefono() { 
        return telefono; 
    }
    public void setTelefono(String telefono) { 
        this.telefono = telefono; 
    }

    public String getDireccion() { 
        return direccion; 
    }
    public void setDireccion(String direccion) { 
        this.direccion = direccion; 
    }

    public Date getFechaNacimiento() { 
        return fechaNacimiento; 
    }
    public void setFechaNacimiento(Date fechaNacimiento) { 
        this.fechaNacimiento = fechaNacimiento; 
    }

    public String getClave() { 
        return clave; 
    }
    public void setClave(String clave) { 
        this.clave = clave; 
    }

    public String getRol() { 
        return rol; 
    }
    public void setRol(String rol) { 
        this.rol = rol; 
    }

    @Override
    public String toString() {
        return "Persona{" +
            "id=" + id +
            ", nombres='" + nombres + '\'' +
            ", apellidos='" + apellidos + '\'' +
            ", correo='" + correo + '\'' +
            ", telefono='" + telefono + '\'' +
            ", direccion='" + direccion + '\'' +
            ", fechaNacimiento=" + fechaNacimiento +
            ", clave='" + clave + '\'' +
            ", rol='" + rol + '\'' +
            '}';
    }
}
