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
 * Servlet implementation class seleccion
 */
@WebServlet("/Iniciar")
public class Iniciar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Iniciar() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    /*
     * (non-Javadoc)
     * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
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
		ControladorBatallas cb = new ControladorBatallas();
		Personaje p1 = new Personaje();
		Personaje p2 = new Personaje();
		p1.setNombre(request.getParameter("per1"));
		p2.setNombre(request.getParameter("per2"));
		try {
			cb.setPersonaje1(p1);
			cb.setPersonaje2(p2);
			p1 = cb.getPersonaje1();
			p2 = cb.getPersonaje2();
			cb.generarTurno();
			
			request.getSession().setAttribute("P1", p1);
			request.getSession().setAttribute("P2", p2);
			request.getRequestDispatcher("batalla.jsp").forward(request, response);
		} 
		catch (Exception e) {
			request.getRequestDispatcher("error.jsp").forward(request, response);
			e.printStackTrace();
		}
	}

}
