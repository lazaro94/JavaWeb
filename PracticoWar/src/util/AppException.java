package util;

public class AppException extends Exception{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//Constructores
	public AppException (){
		super();
	}
	
	public AppException(String mensaje){
		super(mensaje);
	}
	public AppException(String mensaje, Throwable cause){
		super(mensaje,cause);
	}
}
