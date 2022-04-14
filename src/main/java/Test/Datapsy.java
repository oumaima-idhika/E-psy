package Test;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.event.ActionEvent;

import org.primefaces.model.chart.Axis;
import org.primefaces.model.chart.AxisType;
import org.primefaces.model.chart.LineChartModel;
import org.primefaces.model.chart.LineChartSeries;

@ManagedBean
@SessionScoped
public class Datapsy implements Serializable {

	private String code;
	private String code1;
	private String diag;
	private String diag1;
	private String ddc;
	private String ddc1;
	private String notes;
	private String notes1;
	private String med;
	private String med1;
	private String id;
	private String id1;
	
	public String getDiag() {
		return diag;
	}

	public void setDiag(String diag) {
		this.diag = diag;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getId1() {
		return id1;
	}

	public void setId1(String id1) {
		this.id1 = id1;
	}

	public String getDiag1() {
		return diag1;
	}

	public void setDiag1(String diag1) {
		this.diag1 = diag1;
	}

	public String getDdc() {
		return ddc;
	}

	public void setDdc(String ddc) {
		this.ddc = ddc;
	}

	public String getDdc1() {
		return ddc1;
	}

	public void setDdc1(String ddc1) {
		this.ddc1 = ddc1;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getNotes1() {
		return notes1;
	}

	public void setNotes1(String notes1) {
		this.notes1 = notes1;
	}

	public String getMed() {
		return med;
	}

	public void setMed(String med) {
		this.med = med;
	}

	public String getMed1() {
		return med1;
	}

	public void setMed1(String med1) {
		this.med1 = med1;
	}
	private String age;
	private String age1;
	private String ville;
	private String ville1;
	private String sexe;
	private String sexe1;
	private String email;
	private String email1;
	private String etatcivil;
	private String etatcivil1;
	private String contact;
	private String contact1;
	private String contacturgence;
	private String contacturgence1;
	private String nom;
	private String prenom;
	private String prenom1;
	public String getPrenom1() {
		return prenom1;
	}

	public void setPrenom1(String prenom1) {
		this.prenom1 = prenom1;
	}
	private String username;
	private boolean editable;
	private LineChartModel model;
	private LineChartModel model1;
	private LineChartModel model2;
	private LineChartModel model3;
	private LineChartModel model4;
	private LineChartModel model5;
	private LineChartModel model6;
	
	public boolean getEditable() {
		return this.editable;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAge1() {
		return age1;
	}

	public void setAge1(String age1) {
		this.age1 = age1;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getVille1() {
		return ville1;
	}

	public void setVille1(String ville1) {
		this.ville1 = ville1;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	public String getSexe1() {
		return sexe1;
	}

	public void setSexe1(String sexe1) {
		this.sexe1 = sexe1;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEtatcivil() {
		return etatcivil;
	}

	public void setEtatcivil(String etatcivil) {
		this.etatcivil = etatcivil;
	}

	public String getEtatcivil1() {
		return etatcivil1;
	}

	public void setEtatcivil1(String etatcivil1) {
		this.etatcivil1 = etatcivil1;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getContact1() {
		return contact1;
	}

	public void setContact1(String contact1) {
		this.contact1 = contact1;
	}

	public String getContacturgence() {
		return contacturgence;
	}

	public void setContacturgence(String contacturgence) {
		this.contacturgence = contacturgence;
	}

	public String getContacturgence1() {
		return contacturgence1;
	}

	public void setContacturgence1(String contacturgence1) {
		this.contacturgence1 = contacturgence1;
	}

	public void setEditable(boolean editable) {
		this.editable=editable;
	}
	
   
	public Datapsy() {
	}

	public Datapsy(String code, String nom,String prenom) {
		this.code = code;
		this.nom= nom;
		this.prenom=prenom;
		
		
	}
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username=username;
	}
	


	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	public String getCode1() {
		return code1;
	}

	public void setCode1(String code1) {
		this.code1 = code1;
	}


	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public void  send(ActionEvent event) {
		// List <String> newdata = null;
		 id1 = (String)event.getComponent().getAttributes().get("id1");
	     username = (String)event.getComponent().getAttributes().get("username");
	     code1=(String)event.getComponent().getAttributes().get("code1");
	     ville1=(String)event.getComponent().getAttributes().get("ville1");
	     age1=(String)event.getComponent().getAttributes().get("age1");
	     email1=(String)event.getComponent().getAttributes().get("email1");
	     contact1=(String)event.getComponent().getAttributes().get("contact1");
	     contacturgence1=(String)event.getComponent().getAttributes().get("contacturgence1");
	     sexe1=(String)event.getComponent().getAttributes().get("sexe1");
	     etatcivil1=(String)event.getComponent().getAttributes().get("etatcivil1");
	     prenom1=(String)event.getComponent().getAttributes().get("prenom1");
	     ddc1=(String)event.getComponent().getAttributes().get("ddc1");
	     diag1=(String)event.getComponent().getAttributes().get("diag1");
	     med1=(String)event.getComponent().getAttributes().get("med1");
	     notes1=(String)event.getComponent().getAttributes().get("notes1");
	     //newdata.add(username);
	     //newdata.add(code1);
	     //return newdata;
	     
	   
	  }
	
	public void edit() {
	    this.editable = true;
	}
	public String updatepatients() throws ClassNotFoundException, SQLException{
		
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
		int rs = statement.executeUpdate("UPDATE add_patient set nom= '"+this.username+"',prenom= '"+this.prenom1+"' where username= '"+this.code1+"'");
		
		   return "ListePatients";
	}
public String deletepatient() throws ClassNotFoundException, SQLException{
		
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
		
		int rs = statement.executeUpdate("delete from add_patient where username= '"+this.code1+"'");
		
		   return "ListePatients";
	}
public String retourpage() throws ClassNotFoundException, SQLException{
	
	
	this.editable = false;
	   return "ListePatients";
}


public List<Form2> getForm2() throws ClassNotFoundException, SQLException {

	try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		}


		

		String url = "jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC";
		String user="root";
		String password="oumaIdhik2001";

		Connection connexion = DriverManager.getConnection(url, user, password);

		Statement statement = connexion.createStatement();

   
	List<Form2> forms = new ArrayList<Form2>();
	String a="person_id_"+this.id1;
	ResultSet rs = statement.executeQuery("SELECT * from person_id_1;");
	 
	
	ResultSetMetaData result = rs.getMetaData();
	int n = result.getColumnCount();
	ArrayList<String> questions=new ArrayList<String>();
	for(int i=0;i<10;i++) {
		
		questions.add("qst"+(i+1));
	}
	

	
	
	
	/*ArrayList<String> questions=new ArrayList<String>();
	questions.add("qst1");
	questions.add("qst2");
		*/
	   
	    	
	    	
		
		
		ArrayList<Form2> cars=new ArrayList<Form2>(1);
		for(int i=0;i<questions.size();i++) {
		Form2 car1 =new Form2();
		cars.add(car1);
		}
		while(rs.next()) {
			for(int i=0;i<questions.size();i++) {
			if((rs.getString("qst").equals(questions.get(i)))) {
				
				if(rs.getInt("periode0")==1) {
					cars.get(i).setName1(rs.getInt("choice"));
					}
				if(rs.getInt("periode1")==1) {
					cars.get(i).setName2(rs.getInt("choice"));
					}
				if(rs.getInt("periode2")==1) {
					cars.get(i).setName3(rs.getInt("choice"));
					}
				
				
			   
			     }
			}
   
			
		}
				
		
			
			
		
		for(int i=0;i<questions.size();i++) {
		forms.add(cars.get(i));
		
		}
			
		
		
		
		
	    
       return forms ;
}
public ArrayList<LineChartModel> getModel() {
	
	
	ArrayList<LineChartSeries> series=new ArrayList<LineChartSeries>();
	for(int i=0;i<10;i++) {
		LineChartSeries serie=new LineChartSeries();
		series.add(serie);
	}
	ArrayList<LineChartModel>  models=new ArrayList<LineChartModel>();
	for(int i=0;i<10;i++) {
	model = new LineChartModel();
   
    series.get(i).setLabel("Series"+(i+1));
    int a=0;
    
    try {
		series.get(i).set(1, this.getForm2().get(i).getName1());
		System.out.println(series.get(i));
		if(this.getForm2().get(i).getName1()==0) {
			a=a+1;
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    try {
		series.get(i).set(2, this.getForm2().get(i).getName2());
		if(this.getForm2().get(i).getName2()==0) {
			a=a+1;
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    try {
		series.get(i).set(3, this.getForm2().get(i).getName3());
		if(this.getForm2().get(i).getName3()==0) {
			a=a+1;
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   
	   
    if(a!=3) {
    model.addSeries(series.get(i));

    model.setTitle("question"+(i+1));
    model.setLegendPosition("e");
    Axis yAxis = model.getAxis(AxisType.Y);
    yAxis.setMin(0);
    yAxis.setMax(10);
    
   
   models.add(model);
    }
	
}
    return models;
}
}
