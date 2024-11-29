package com.spalacioc.mascotasymas.model;


public class Mensaje {
    private int idMensaje;
    private String nombres;
    private String apellidos;
    private String correo;
    private String telefono;
    private String mensaje;

    public Mensaje() {
    }

    public Mensaje(int idMensaje, String nombres, String apellidos, String correo, String telefono, String mensaje) {
        this.idMensaje = idMensaje;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.correo = correo;
        this.telefono = telefono;
        this.mensaje = mensaje;
    }

    public int getIdMensaje() {
        return idMensaje;
    }

    public void setIdMensaje(int idMensaje) {
        this.idMensaje = idMensaje;
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

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    @Override
    public String toString() {
        return "Mensaje{" +
                "idMensaje=" + idMensaje +
                ", nombres='" + nombres + '\'' +
                ", apellidos='" + apellidos + '\'' +
                ", correo='" + correo + '\'' +
                ", telefono='" + telefono + '\'' +
                ", mensaje='" + mensaje + '\'' +
                '}';
    }
}
