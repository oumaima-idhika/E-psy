package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.jdbc.result.ResultSetMetaData;

/**
 * Servlet implementation class Home
 */

public class Home extends HttpServlet {
	
	
	



		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 this.getServletContext().getRequestDispatcher("/display.jsp").forward(request, response);
		    }

		    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		       
		        
		    	try {
					  Class.forName("com.mysql.cj.jdbc.Driver");
					} catch (ClassNotFoundException e) {
					}


					try {

					String url = "jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC";
					String user="root";
					String password="oumaIdhik2001";		   
					
					Connection connexion = DriverManager.getConnection(url, user, password);
					PreparedStatement st = connexion.prepareStatement("update add_psychiatre set nom=?, prenom=?, username=?, password=? where id=1;");
					 st.setString(1, request.getParameter("nom"));
			            st.setString(2, request.getParameter("prenom"));
			            st.setString(3, request.getParameter("username"));
			            st.setString(4, request.getParameter("password"));
			            st.executeUpdate();
			  		  
			            // Close all the connections
			            st.close();
			            connexion.close();
			  
			            this.getServletContext().getRequestDispatcher("/display.jsp").forward(request, response);
					}catch (Exception e) {
			            e.printStackTrace();
			        }
			}

					
					
					
					
					
					} 

	


