
package upeu.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import upeu.config.Conexion;
import upeu.entity.Tablas;
import upeu.dao.TablaDAO;


public class TablasDAOImpl implements TablaDAO{
private PreparedStatement ps;
    private ResultSet rs;
    private Connection cx;

    @Override
    public int create(Tablas tablita) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(Tablas tablita) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(int idventa) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Tablas read(int idventa) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Tablas> readAll() {
        
        String SQL = "SELECT ventas.idventa AS \"id\", sucursales.direccion AS \"sucursal\",vendedor.nombre AS \"vendedor\",personas.nombres AS \"cliente\",ventas.fecha AS \"fecha\" FROM ventas,sucursales,personas,vendedor ORDER BY 1";
        
        List<Tablas> lista = new ArrayList<>();
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            rs = ps.executeQuery();
            while (rs.next()) {
                Tablas v = new Tablas();
                v.setIdventa(rs.getInt("id"));
                v.setSucursal(rs.getString("sucursal"));
                v.setVendedor(rs.getString("vendedor"));
                v.setCliente(rs.getString("cliente"));
                v.setFecha(rs.getString("fecha"));

                lista.add(v);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
    }
    

