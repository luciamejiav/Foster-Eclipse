package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conexion.Conexion;
import dao.DAOCategoria;
import dao.DAOProducto;
import model.Categoria;
import model.Producto;


/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String op = request.getParameter("op");
		ArrayList<Categoria> categorias = null;
		ArrayList<Producto> productos = null;
		
		// Singleton connection
		Connection con = (Connection) session.getAttribute("con");
		if (con==null) {
			try {
				con = Conexion.conecta();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			session.setAttribute("con", con);
		}
		
		switch (op) {
		case "inicio": {
			// actuar en consecuencia
			try {
				categorias = new DAOCategoria().getAllCategorias(con);
								
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("categorias", categorias);
			//DOS OPCIONES:
			// session.setAttribute("Key", objeto);
			// request.setAttribute("Key", objeto);
			request.getRequestDispatcher("home.jsp").forward(request, response);
			break;
		}
		case "dameplatos":
		{
			String categoriaid = request.getParameter("categoriaid");
			String nombrecategoria = request.getParameter("nombrecategoria");
			try {
				productos = new DAOProducto().getAllProductosByCategoria(Integer.parseInt(categoriaid), con);
								
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("productos", productos);
			request.setAttribute("nombrecategoria", nombrecategoria);
			//DOS OPCIONES:
			// session.setAttribute("Key", objeto);
			// request.setAttribute("Key", objeto);
			request.getRequestDispatcher("home.jsp").forward(request, response);
			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: " + op);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
