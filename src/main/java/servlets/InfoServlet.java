package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.InfoBean;
import dao.InfoDao;
import dao.MessageDao;



public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfoDao infodao;
    
    public InfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
        infodao = new InfoDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();
    	String username = (String)session.getAttribute("username");
    	int id;
    	
		try {
			id = (int)session.getAttribute("id");
		} catch (NullPointerException e) {
			id=0;
			e.printStackTrace();
		}
    	
    	InfoBean infobean = new InfoBean();
    	
    	try {
    		
    		//if(id==null)
    		//	infodao.getInfos(infobean, 0);
    		//else
    		//	infodao.getInfos(infobean, id);
    		
    		//try {
    		
    		infodao.getInfos(infobean, id);
    		
    		
    		//}
    		//catch(NullPointerException e) {
    			//e.printStackTrace();
    		//}
			
			//String nom = infobean.getNom();
			//String prenom = infobean.getPrenom();
			String sexe = infobean.getSexe();
			String ville = infobean.getVille();
			String email = infobean.getEmail();
			String etatcivil = infobean.getEtatcivil();
			String notes = infobean.getNotes();
			String prescription = infobean.getPrescription();
			int age = infobean.getAge();
			int contact = infobean.getContact();
			int contacturg = infobean.getContacturg();
			String date = infobean.getDate();
			String password = infobean.getPassword();
			String diagno = infobean.getDiagnostic();
			int suivi = infobean.getSuivi();
					
			//session.setAttribute("nom", nom);
			//session.setAttribute("prenom", prenom);
			session.setAttribute("sexe", sexe);
			session.setAttribute("ville", ville);
			session.setAttribute("email", email);
			session.setAttribute("etat", etatcivil);
			session.setAttribute("notes", notes);
			session.setAttribute("presc", prescription);
			session.setAttribute("age", age);
			session.setAttribute("c", contact);
			session.setAttribute("cu", contacturg);
			session.setAttribute("date", date);
			session.setAttribute("password", password);
			session.setAttribute("diagno", diagno);
			session.setAttribute("suivi", suivi);
			
			
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    	
    	
    	
    	if(username==null) {
    		this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
    	}
    	else {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/info.jsp").forward(request, response);

    	}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
