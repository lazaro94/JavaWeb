package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Personaje;
import logic.ControladorBatallas;

/**
 * Servlet implementation class Defender
 */
@WebServlet("/Defender")
public class Defender extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Defender() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);		
		Personaje p1;
		Personaje p2;
		try{
			ControladorBatallas cb = (ControladorBatallas)request.getSession().getAttribute("Controlador");
			cb.defensa();
			int turno=cb.cambioTurno();
			p1 = cb.getPersonaje1();
			p2 = cb.getPersonaje2();
			request.getSession().setAttribute("P1", p1);
			request.getSession().setAttribute("P2", p2);
			request.getSession().setAttribute("Controlador", cb);
			request.getRequestDispatcher("WEB-INF/batalla.jsp").forward(request, response);
		}
		catch(Exception ex){
			
		}
	}

}
