package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.LoginBean;
import beans.MessageBean;
import dao.LoginDao;
import dao.MessageDao;


public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MessageDao msgdao;
       
    
    public MessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
        msgdao = new MessageDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Refresh
    	//this.getServletContext().getRequestDispatcher("/WEB-INF/message.jsp").forward(request, response);
    	
    	
    	HttpSession session = request.getSession();
    	String username = (String)session.getAttribute("username");
    	if(username==null) {
    		this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
    	}
    	else {
        	this.getServletContext().getRequestDispatcher("/WEB-INF/message.jsp").forward(request, response);

    	}
    	
    	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//
		String username_docteur = request.getParameter("user");
        String message = request.getParameter("message");
        MessageBean msgbean = new MessageBean();
        
        HttpSession session = request.getSession();
        
        msgbean.setUsername_client((String)session.getAttribute("username"));
        msgbean.setUsername_docteur(username_docteur);
        msgbean.setMessage(message);        
        
        try {
            if (msgdao.send(msgbean)) 
            {
            	String msg = "<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">\r\n"
            			+ "  <strong>Congrats !</strong> Votre message a été bien envoyé.\r\n"
            			+ "  <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n"
            			+ "</div>";
            	request.setAttribute("msg",msg);
                this.getServletContext().getRequestDispatcher("/WEB-INF/message.jsp").forward(request, response);
              
            } 
            else 
            {
            	String msg = "<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">\r\n"
            			+ "  <strong>Echéc !</strong> Une erreur est survenue lors de l'envoi du message !!\r\n"
            			+ "  <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\r\n"
            			+ "</div>";
            	request.setAttribute("msg",msg);
                this.getServletContext().getRequestDispatcher("/WEB-INF/message.jsp").forward(request, response);
            }
            
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
		
		
	}

}
