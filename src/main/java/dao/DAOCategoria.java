package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Categoria;

public class DAOCategoria {
	public ArrayList<Categoria> getAllCategorias(Connection con) throws SQLException{
		ResultSet rs;
		ArrayList<Categoria> lista = new ArrayList<Categoria>();

		Statement st;
		st = con.createStatement();
		String ordenSql = "SELECT * from categoria";
		rs = st.executeQuery(ordenSql);

		while (rs.next()) { //con esto vamos accediendo a cada una de las filas
			Categoria categoria = new Categoria(); //si en la clase Categoria no haces el constructor superclase no funciona esta linea
			categoria.setId(rs.getInt("id"));
			categoria.setNombre(rs.getString("nombre"));
			categoria.setDescripcion(rs.getString("descripcion"));
			categoria.setGuarnicion(rs.getString("guarnicion"));
			lista.add(categoria); //lo añadimos al arraylist
		}
		rs.close();
		st.close();

		return lista;
	}
}
