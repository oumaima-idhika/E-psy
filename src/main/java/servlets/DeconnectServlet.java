package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/deconnect")
public class DeconnectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeconnectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); //getting to session object
		
		
		session.invalidate(); //using this method to destroy the session object
		
		
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/home.jsp"); // using RequestDispatcher method forward to login page.
		requestDispatcher.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
