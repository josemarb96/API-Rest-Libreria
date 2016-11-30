package cliente;

public class Autor 
{
	//OJO!!!! LLAMAR IGUAL QUE EL PHPSTORM!!!!
	private int codigo;
	private String nombre;
	private String apellidos;
	
	public int getCodigo() 
	{
		return codigo;
	}
	
	public void setCodigo(int codigo) 
	{
		this.codigo = codigo;
	}
	
	public String getNombre() 
	{
		return nombre;
	}
	
	public void setNombre(String nombre) 
	{
		this.nombre = nombre;
	}
	
	public String getApellidos() 
	{
		return apellidos;
	}
	
	public void setApellidos(String apellidos) 
	{
		this.apellidos = apellidos;
	}
}