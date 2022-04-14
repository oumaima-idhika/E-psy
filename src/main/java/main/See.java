package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class See
 */
@WebServlet("/See")
public class See extends HttpServlet {

  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
			}


			try {

			String url = "jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC";
			String user="root";
			String password="oumaIdhik2001";
	
					

			Connection connexion = DriverManager.getConnection(url, user, password);
			PreparedStatement st = connexion.prepareStatement("UPDATE message SET seen = 1 WHERE id = ? ;");
			st.setInt(1, Integer.valueOf(request.getParameter("idee")));
			
	            
	  
	            // Execute the insert command using executeUpdate()
	            // to make changes in database
	            st.executeUpdate();
	  
	            // Close all the connections
	            st.close();
	            connexion.close();
	  
	            this.getServletContext().getRequestDispatcher("/messages.jsp").forward(request, response);

	            PrintWriter out = response.getWriter();
	            out.println("<html><body><b>Successfully Inserted"
	                        + "</b></body></html>");

			}
			catch (Exception e) {
	            e.printStackTrace();
	        }
	
	}

}
