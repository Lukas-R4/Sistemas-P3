import com.google.gson.Gson;

public class GeraJson {

	public static void main(String[] args) {
		
		Cerveja skol = new Cerveja();
		skol.setAno(2019);
		skol.setMalte("Puro Malte");
		skol.setMarca("Skol");
		skol.setNome("Skol Ice Blue Red");
		
		Gson g = new Gson();
		String Json = g.toJson(skol);
		
		System.out.println(Json);
		
		
	}

}
