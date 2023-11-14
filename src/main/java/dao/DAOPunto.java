package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Punto;

public class DAOPunto {
	
	public void insertaPunto(Punto punto, Connection con) throws SQLException{
		String ordenSQL;
		ordenSQL = "insert into punto values(?,?,?)";
		PreparedStatement st = con.prepareStatement(ordenSQL);
		st.setInt(1, punto.getId());
		st.setInt(2, punto.getIdproducto());
		st.setInt(3, punto.getPuntos());
		st.executeUpdate();
		st.close();
	}


}
