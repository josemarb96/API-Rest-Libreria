package cliente;

import java.io.IOException;
import com.google.gson.Gson;
import okio.*;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class Main 
{
	//private final static String SERVER_URL = "http://lumenrest.dev";
    //private final static String SERVER_URL = "http://libreria.dev:8080";//miPC
	private final static String SERVER_URL = "http://libreria.dev/"; //PC clase
	
	public static void main(String[] args) 
	{
		Retrofit retrofit;
		AutorCallback autorCallback = new AutorCallback();
		
		retrofit = new Retrofit.Builder()
							   .baseUrl(SERVER_URL)
							   .addConverterFactory(GsonConverterFactory.create())
							   .build();
		
		AutorInterface autorInter = retrofit.create(AutorInterface.class);
		
		//Cambiar numerito para ver a los demás (es el id)
		autorInter.getAutor(1).enqueue(autorCallback);
	}
}