package servlets;

import beans.LoginBean;
import dao.LoginDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao logindao;
    
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init() {
        logindao = new LoginDao();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		
		String username = (String)session.getAttribute("username");
    	if(username==null) {
    		this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
    	}
    	else {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/loginsuccess.jsp").forward(request, response);

    	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String type = request.getParameter("type");
        LoginBean loginbean = new LoginBean();
        //Remplir LoginBean
        loginbean.setUsername(username);
        loginbean.setPassword(password);
        loginbean.setType(type);
        
        HttpSession session = request.getSession();
        
        
        
        
        try {
            if (logindao.validate(loginbean)) 
            {
                
            	//Acquérir le nom et le prenom du patient
                logindao.setColumns(loginbean);
                int id = loginbean.getId();
                String nom = loginbean.getNom();
                String prenom = loginbean.getPrenom();
                session.setAttribute("id",id);
                session.setAttribute("nom",nom);
                session.setAttribute("prenom",prenom);
                session.setAttribute("username", username);
                if(loginbean.getType().equals("Patient"))
                	this.getServletContext().getRequestDispatcher("/WEB-INF/loginsuccess.jsp").forward(request, response);
                else
                	this.getServletContext().getRequestDispatcher("/espacePsy.jsp").forward(request, response);
            } 
            else 
            {
            	String msg = "<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">\r\n"
            			+ "  <strong>Erreur lors de l'authentification !</strong> Verifier votre username ou votre mot de passe ou bien le type de connexion.\r\n"
            			+ "  <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n"
            			+ "</div>";
            	request.setAttribute("msg",msg);
                this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
            }
            
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        
        
	}

}
