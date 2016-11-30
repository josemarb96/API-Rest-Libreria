package cliente;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface AutorInterface 
{
	//@GET("/api/v1/Autores/{id}") //cual es mi ruta???  
	@GET("Autores/{codigo}/")
	Call<Autor> getAutor (@Path("codigo") int codigo);
}