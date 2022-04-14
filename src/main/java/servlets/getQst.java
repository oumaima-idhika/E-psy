package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class getQst
 */
@WebServlet("/getQst")
public class getQst extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
    	String username = (String)session.getAttribute("username");
    	int id;
    	
		try {
			id = (int)session.getAttribute("id");
			String patient_id = "person_id_"+id;
			session.setAttribute("id_p", patient_id);
		} catch (NullPointerException e) {
			id=1;
			e.printStackTrace();
		}
		
		try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
			}
		try {

			String url = "jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC";
			String user="root";
			String password="oumaIdhik2001";
	       
			Connection connexion = DriverManager.getConnection(url, user, password);
            PreparedStatement st1 = connexion.prepareStatement("SET SQL_SAFE_UPDATES = 0;");
            st1.executeUpdate();
			try(PreparedStatement st = connexion.prepareStatement("select distinct question from person_id_"+id)){
				 ResultSet rs = st.executeQuery ();
	        	 while (rs.next()) {
	                 String n = "" +rs.getString("question") +"";
	                 String choix = ""+ request.getParameter(n) + ""; 
	                 System.out.println(choix);
	                 PreparedStatement stn = connexion.prepareStatement("UPDATE person_id_"+id+" SET periode0 = 1 WHERE question = \""+n+"\" and choice = " + choix + ";");
	                 stn.executeUpdate();
	              }
			}
			
			   connexion.close();
	            this.getServletContext().getRequestDispatcher("/displayQst.jsp").forward(request, response);

	            PrintWriter out = response.getWriter();
	            out.println("<html><body><b>Successfully Inserted"
	                        + "</b></body></html>");

			
		}  catch (Exception e) {
            e.printStackTrace();
        }
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	}

}
