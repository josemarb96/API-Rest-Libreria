package cliente;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import okhttp3.Headers;

public class AutorCallback implements Callback<Autor> 
{
	@Override
	public void onFailure(Call<Autor> arg0, Throwable arg1) 
	{
		// TODO Auto-generated method stub
		int i;
		i=0;
	}

	@Override
	public void onResponse(Call<Autor> arg0, Response<Autor> resp) 
	{
		// TODO Auto-generated method stub
		
		Autor autor;
		String contentType;
		int code;
		String message;
		boolean isSuccesful;
		
		autor = resp.body();
		
		Headers cabeceras = resp.headers();
		contentType = cabeceras.get("Content-Type");
		code = resp.code();
		message = resp.message();
		isSuccesful = resp.isSuccessful();
		
		//Sólo devuelve un autor, no todos
		System.out.println(autor.getCodigo()+", "+autor.getNombre()+", "+autor.getApellidos());	
	}
}