package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.InfoBean;

public class InfoDao {
	
	
	public void getInfos(InfoBean infobean, int id) throws ClassNotFoundException {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try {
        	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC", "root", "oumaIdhik2001");
        
        	PreparedStatement statement = connection.prepareStatement("select * from add_patient where id=?"); 
            statement.setInt(1, id);
            ResultSet resultat = statement.executeQuery();
            
            while(resultat.next()) {
            	infobean.setNom(resultat.getString("nom"));
            	infobean.setPrenom(resultat.getString("prenom"));
            	infobean.setSexe(resultat.getString("sexe"));
            	infobean.setVille(resultat.getString("ville"));
            	infobean.setEmail(resultat.getString("email"));
            	infobean.setEtatcivil(resultat.getString("etatCivil"));
            	infobean.setNotes(resultat.getString("notes"));
            	infobean.setPrescription(resultat.getString("prescription"));
            	infobean.setAge(resultat.getInt("age"));
            	infobean.setContact(resultat.getInt("contact"));
            	infobean.setContacturg(resultat.getInt("contactUrg"));
            	infobean.setDate(resultat.getString("dateCons"));
            	infobean.setPassword(resultat.getString("password"));
            	infobean.setDiagnostic(resultat.getString("diagnostic"));
            	infobean.setSuivi(resultat.getInt("suivi"));
            	
            }
            

        } catch (SQLException e) {
        	e.printStackTrace();
        }
		
		
	}

}
