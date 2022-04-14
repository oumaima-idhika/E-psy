package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;



import beans.LoginBean;

public class LoginDao {

    public boolean validate(LoginBean loginbean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try {
        	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC", "root", "oumaIdhik2001");
        	String tablename = null;
        	//Type d'utilisateur 
        	if(loginbean.getType().equals("Medecin"))
        		tablename = "add_psychiatre";
        	if(loginbean.getType().equals("Patient"))
        		tablename = "add_patient";
        	
            // Step 2:Create a statement using connection object
            PreparedStatement statement = connection.prepareStatement("select * from "+tablename+" where username = ? and password = ? "); 
            statement.setString(1, loginbean.getUsername());
            statement.setString(2, loginbean.getPassword());

            
            ResultSet resultat = statement.executeQuery();
            status = resultat.next();
            

        } catch (SQLException e) {
            // process sql exception
        	e.printStackTrace();
        }
        
        return status;
    }
    
    
    public void setColumns(LoginBean loginbean) throws ClassNotFoundException {
    	Class.forName("com.mysql.jdbc.Driver");

        try {
        	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC", "root", "oumaIdhik2001");
        	String tablename = null;
        	//Type d'utilisateur 
        	if(loginbean.getType().equals("Medecin"))
        		tablename = "add_psychiatre";
        	if(loginbean.getType().equals("Patient"))
        		tablename = "add_patient";
        	
            // Step 2:Create a statement using connection object
            PreparedStatement statement = connection.prepareStatement("select * from "+tablename+" where username = ? and password = ? "); 
            statement.setString(1, loginbean.getUsername());
            statement.setString(2, loginbean.getPassword());

            
            ResultSet resultat = statement.executeQuery();
            
            while(resultat.next()) {
            	loginbean.setId(resultat.getInt("id"));
            	loginbean.setNom(resultat.getString("nom"));
				loginbean.setPrenom(resultat.getString("prenom"));
            }
    } catch (SQLException e) {
        // process sql exception
    	e.printStackTrace();
    }
}
    
}
