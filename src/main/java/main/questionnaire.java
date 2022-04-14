package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class questionnaire
 */
@WebServlet("/questionnaire")
public class questionnaire extends HttpServlet {
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     
	

		try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
			}


			try {

			String url = "jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC";
			String user="root";
			String password="oumaIdhik2001";
	       
			Connection connexion = DriverManager.getConnection(url, user, password);
			try(PreparedStatement st = connexion.prepareStatement("INSERT INTO questionnaire1(title,question,choice,qst) VALUES(?,?,?,?);")){
				int i=1;
		         String qst = "question"+i;
		         String qst1= "qst"+i;
		         
		         while(request.getParameter(qst)!=null) {
		        	 int j=0;
		             String opt = "option"+i+""+j;
		             while(request.getParameter(opt)!=null) {
		            	 st.setString(1, request.getParameter("title"));
		 	             st.setString(2, request.getParameter(qst));
		 	             st.setInt(3, Integer.parseInt(request.getParameter(opt)));
		 	             st.setString(4, qst1);
			             st.executeUpdate();
			             j++;
			             opt = "option"+i+""+j;
		            	
		            }
		             i++;
		             qst = "question"+i;    
		         
		         }
		         
		        
		     
			}
			try{

				 String[] names = request.getParameterValues("names");
				 int nb= Integer.parseInt(request.getParameter("nbsuivi"));
				 PreparedStatement st = connexion.prepareStatement("select * from add_patient where id = ?");
				
			        List<String> list = Arrays.asList(names);
			        
			        for(int k=0;k<list.size();k++) {
			        	int n=0;
			        	String table="person_id_"+list.get(k);
			        	PreparedStatement st1=connexion.prepareStatement("create table  "+ table + " as select * from questionnaire1 ");
			        	st1.executeUpdate();
			        	System.out.println(table +" is created");

			        	
			        	 st.setInt(1, Integer.parseInt(list.get(k)));
			        	 ResultSet rs = st.executeQuery ();
			        	 while (rs.next()) {
			                 n = rs.getInt("suivi");
			               
			              }
						 
			        	 for(int p=0;p<((int)nb/n);p++) {
			        		 String col="periode"+p;
			        		 
			        		 PreparedStatement st2 = connexion.prepareStatement("ALTER TABLE "+table+" ADD " +col+ " int;");
			        		 st2.executeUpdate();
			        		 System.out.println(col +" is added");
			        		 
			        	 }
			        	 
			        	 
			        }
			        //st.close();
			        
			

		        
			        PreparedStatement st3 = connexion.prepareStatement("delete from questionnaire1");
			        st3.executeUpdate();
		        connexion.close();
	            this.getServletContext().getRequestDispatcher("/add_question1.jsp").forward(request, response);

	            PrintWriter out = response.getWriter();
	            out.println("<html><body><b>Successfully Inserted"
	                        + "</b></body></html>");

			}
			catch (Exception e) {
	            e.printStackTrace();
	        }
	
			}catch (Exception e) {
	            e.printStackTrace();
	        }
	}}