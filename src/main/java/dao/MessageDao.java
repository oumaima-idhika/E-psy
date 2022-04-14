package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import beans.LoginBean;
import beans.MessageBean;

public class MessageDao {
	
	
	public boolean send(MessageBean msgbean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try {
        	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC", "root", "oumaIdhik2001");
        	
        	String username_client = msgbean.getUsername_client();
        	String username_docteur = msgbean.getUsername_docteur();
        	String message = msgbean.getMessage();
        	
        	//Verifier si le Username du docteur existe dans la base de données
        	PreparedStatement stm = connection.prepareStatement("select * from add_psychiatre where username=?"); 
            stm.setString(1, username_docteur);
            ResultSet doc = stm.executeQuery();
            if(doc.next()==false) {
            	status = false;
            }
            else {
            // Inserer le message dans la base de données
            	LocalDateTime date = LocalDateTime.now();  
                DateTimeFormatter myFormatObj1 = DateTimeFormatter.ofPattern("dd-MM-yyyy");  
                DateTimeFormatter myFormatObj2 = DateTimeFormatter.ofPattern("HH:mm"); 
                String temps = date.format(myFormatObj1);
                String heure = date.format(myFormatObj2); 
                
            PreparedStatement statement = connection.prepareStatement("insert into message(username_patient,username_doctor,message,seen,heure,temps) VALUES (?,?,?,?,?,?)");
            statement.setString(1, username_client);
            statement.setString(2, username_docteur);
            statement.setString(3, message);
            statement.setInt(4, 0);
            statement.setString(5, heure);
            statement.setString(6, temps);
            
            //Verifier si l'insertion a bien été effectuée
            int affectedRows = statement.executeUpdate();
            status = (affectedRows > 0);
           } 

        } catch (SQLException e) {
        	e.printStackTrace();
        }
        
        return status;
    }

}
