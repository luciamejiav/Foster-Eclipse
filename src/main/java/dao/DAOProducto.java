package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Producto;

public class DAOProducto {

	public ArrayList<Producto> getAllProductosByCategoria(int idcategoria, Connection con) throws SQLException{
		ResultSet rs;
		ArrayList<Producto> lista = new ArrayList<Producto>();

		Statement st;
		st = con.createStatement();
		String ordenSql = "SELECT * from producto where categoriaid=" + idcategoria;
		rs = st.executeQuery(ordenSql);

		while (rs.next()) { //con esto vamos accediendo a cada una de las filas
			Producto producto = new Producto(); //si en la clase Categoria no haces el constructor superclase no funciona esta linea
			producto.setId(rs.getInt("id"));
			producto.setTitulo(rs.getString("titulo"));
			producto.setImagen(rs.getString("imagen"));
			lista.add(producto); //lo añadimos al arraylist
		}
		rs.close();
		st.close();

		return lista;
	}

}
