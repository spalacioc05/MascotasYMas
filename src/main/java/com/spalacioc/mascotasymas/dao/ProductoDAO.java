package com.spalacioc.mascotasymas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.spalacioc.mascotasymas.model.Producto;

public class ProductoDAO {

    public List<Producto> obtenerTodosLosProductos() {
        List<Producto> productos = new ArrayList<>();
        try (Connection conexion = ConexionBD.getConnection()) {
            String sql = "SELECT * FROM productos";
            PreparedStatement statement = conexion.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Producto producto = new Producto();
                producto.setSku(resultSet.getInt("sku"));
                producto.setNombre(resultSet.getString("nombre"));
                producto.setDescripcion(resultSet.getString("descripcion"));
                producto.setCodigoBarras(resultSet.getString("codigoBarras"));
                producto.setCategoria(resultSet.getString("categoria"));
                producto.setMarca(resultSet.getString("marca"));
                producto.setPrecio(resultSet.getDouble("precio"));
                producto.setPeso(resultSet.getString("peso"));
                producto.setImagen(resultSet.getBytes("imagen"));
                productos.add(producto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }

    public Producto obtenerProductoPorSku(int sku) {
        Producto producto = null;
        try (Connection conexion = ConexionBD.getConnection()) {
            String sql = "SELECT * FROM productos WHERE sku = ?";
            PreparedStatement statement = conexion.prepareStatement(sql);
            statement.setInt(1, sku);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                producto = new Producto();
                producto.setSku(resultSet.getInt("sku"));
                producto.setNombre(resultSet.getString("nombre"));
                producto.setDescripcion(resultSet.getString("descripcion"));
                producto.setCodigoBarras(resultSet.getString("codigoBarras"));
                producto.setCategoria(resultSet.getString("categoria"));
                producto.setMarca(resultSet.getString("marca"));
                producto.setPrecio(resultSet.getDouble("precio"));
                producto.setPeso(resultSet.getString("peso"));
                producto.setImagen(resultSet.getBytes("imagen"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return producto;
    }

    public void agregarProducto(Producto producto) {
        String sql = "INSERT INTO productos (sku, nombre, descripcion, codigoBarras, categoria, marca, precio, peso, imagen) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conexion = ConexionBD.getConnection();
             PreparedStatement statement = conexion.prepareStatement(sql)) {
            statement.setInt(1, producto.getSku());
            statement.setString(2, producto.getNombre());
            statement.setString(3, producto.getDescripcion());
            statement.setString(4, producto.getCodigoBarras());
            statement.setString(5, producto.getCategoria());
            statement.setString(6, producto.getMarca());
            statement.setDouble(7, producto.getPrecio());
            statement.setString(8, producto.getPeso());
            statement.setNull(9, java.sql.Types.BLOB); // Imagen como null
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editarProducto(Producto producto) {
        String sql = "UPDATE productos SET nombre = ?, descripcion = ?, codigoBarras = ?, categoria = ?, marca = ?, precio = ?, peso = ? WHERE sku = ?";
        try (Connection conexion = ConexionBD.getConnection();
             PreparedStatement statement = conexion.prepareStatement(sql)) {
            statement.setString(1, producto.getNombre());
            statement.setString(2, producto.getDescripcion());
            statement.setString(3, producto.getCodigoBarras());
            statement.setString(4, producto.getCategoria());
            statement.setString(5, producto.getMarca());
            statement.setDouble(6, producto.getPrecio());
            statement.setString(7, producto.getPeso());
            statement.setInt(8, producto.getSku());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void eliminarProducto(int sku) {
        String sql = "DELETE FROM productos WHERE sku = ?";
        try (Connection conexion = ConexionBD.getConnection();
             PreparedStatement statement = conexion.prepareStatement(sql)) {
            statement.setInt(1, sku);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}