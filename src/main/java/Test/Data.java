package Test;



import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class Data implements Serializable {

	

	public List<Datapsy> getData2() throws ClassNotFoundException, SQLException {

		try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
			}


			

			String url = "jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC";
			String user="root";
			String password="oumaIdhik2001";

			Connection connexion = DriverManager.getConnection(url, user, password);

			Statement statement = connexion.createStatement();


		List<Datapsy> datas = new ArrayList<Datapsy>();
		ResultSet rs = statement.executeQuery("SELECT id,username,nom,prenom,age,email,sexe,etatCivil,ville,contact,contactUrg,diagnostic,dateCons,prescription,notes from add_patient;");;
		

		while (rs.next()) {

			Datapsy car = new Datapsy();
			car.setId(rs.getString("id"));
			car.setCode(rs.getString("username"));
			car.setNom(rs.getString("nom"));
			car.setPrenom(rs.getString("prenom"));
			car.setAge(rs.getString("age"));
			car.setEmail(rs.getString("email"));
			car.setSexe(rs.getString("sexe"));
			car.setEtatcivil(rs.getString("etatCivil"));
			car.setVille(rs.getString("ville"));
			car.setContact(rs.getString("contact"));
			car.setContacturgence(rs.getString("contactUrg"));
			car.setMed(rs.getString("prescription"));
			car.setNotes(rs.getString("notes"));
			car.setDiag(rs.getString("diagnostic"));
			car.setDdc(rs.getString("dateCons"));
			
			datas.add(car);

		}
		return datas;
		
			

		// close resources
		

		
		

	}
	


}
 