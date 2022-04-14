package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Test
 */

public class Test extends HttpServlet {
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/add_patient1.jsp").forward(request, response);

		/*try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		}


		try {

		String url = "jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC";
		String user="root";
		String password="oumaIdhik2001";

		Connection connexion = DriverManager.getConnection(url, user, password);
		Statement stmt = connexion.createStatement(); 
		stmt.executeUpdate("INSERT INTO add_patient(nom, prenom , sexe , age , email , ville , etatCivil ,contactUrg , contact , diagnostic , suivi , prescription , notes , dateCons) VALUES(\"asmae\", \"jam\" , \"femme\", 20, \"oumaima2001@gmail.com\", \"rabat\", \"celiba\", 0642578 , 048699, \"bipolaire\" , 2, \"rien\", \"rien\",\"22/05/2020\");\r\n");


        /*ResultSet rs = stmt.executeQuery("SELECT * from add_patient;");  
        while (rs.next()) 
        {  
            String n = rs.getString("nom"); 
            PrintWriter out = response.getWriter();
           
            out.println(n);   
        } 
	
	

		
		}
		catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}*/
		}



		/**
		* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		*/
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				  Class.forName("com.mysql.cj.jdbc.Driver");
				} catch (ClassNotFoundException e) {
				}


				try {

				String url = "jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC";
				String user="root";
				String password="oumaIdhik2001";
				String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijk"
				          +"lmnopqrstuvwxyz!@#$%&";
						Random rnd = new Random();
						StringBuilder sb = new StringBuilder(10);
						for (int i = 0; i < 10; i++)
							sb.append(chars.charAt(rnd.nextInt(chars.length())));
						

				Connection connexion = DriverManager.getConnection(url, user, password);
				PreparedStatement st = connexion.prepareStatement("INSERT INTO add_patient(nom, prenom , sexe , age , email ,username , etatCivil ,contactUrg , contact , diagnostic , suivi , prescription , notes , dateCons , password , ville) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
		  
		           
		        
		            st.setString(1, request.getParameter("nom"));
		            st.setString(2, request.getParameter("prenom"));
		            st.setString(3, request.getParameter("sexe"));
		            st.setInt(4, Integer.valueOf(request.getParameter("age")));
		            st.setString(5, request.getParameter("email"));
		            st.setString(6, request.getParameter("username"));
		            st.setString(7, request.getParameter("etatCivil"));
		            st.setInt(8, Integer.valueOf(request.getParameter("contactUrg")));
		            st.setInt(9, Integer.valueOf(request.getParameter("contact")));
		            st.setString(10, request.getParameter("diagnostic"));

		            if(Integer.valueOf(request.getParameter("suivi"))==0) {
			            st.setInt(11, Integer.valueOf(request.getParameter("suivi1")));

		            }
		            else {
			            st.setInt(11, Integer.valueOf(request.getParameter("suivi")));

		            }
		            st.setString(12, request.getParameter("prescription"));
		            st.setString(13, request.getParameter("notes"));
		            st.setString(14, request.getParameter("dateCons"));
		            st.setString(15, sb.toString());
		            st.setString(16, request.getParameter("ville"));

		            
		  
		            // Execute the insert command using executeUpdate()
		            // to make changes in database
		            st.executeUpdate();
		  
		            // Close all the connections
		            st.close();
		            connexion.close();
		  
		            this.getServletContext().getRequestDispatcher("/add_patient1.jsp").forward(request, response);


				}
				catch (Exception e) {
		            e.printStackTrace();
		        }
		}
}
		

				
		


