package model;

public class Producto {
	private int id;
	private String titulo;
	private String imagen;
	
	public Producto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Producto(int id, String titulo, String imagen) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.imagen = imagen;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	@Override
	public String toString() {
		return "Producto [id=" + id + ", titulo=" + titulo + ", imagen=" + imagen + "]";
	}
}
