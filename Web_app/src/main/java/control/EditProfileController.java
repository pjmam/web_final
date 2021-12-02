package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EditDAO;
import dao.userDAO;
import enity.Member;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/edit_profile")
public class EditProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EditDAO editDAO;

	public void init() {
		editDAO = new EditDAO();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String Firstname = request.getParameter("Firstname");
    	String Lastname = request.getParameter("Lastname");
    	String Phone = request.getParameter("Phone");
    	String Description = request.getParameter("Description");
    
    	response.setContentType("text/html");
    	PrintWriter pwriter = response.getWriter();
    	HttpSession session=request.getSession(false);
    	String mail=(String)session.getAttribute("emailS");
    	
    	//Member edit = new Member(Firstname,Lastname,Phone,Description);		    	    
    	Member edit =new Member();
    	edit.setFirstName(Firstname);
    	edit.setLastName(Lastname);
    	edit.setPhone(Phone);
    	edit.setDescription(Description);
    	
    	try {
    		if(edit.Checkedit()) 
    		{
    			editDAO.editUser(edit,mail);
    			response.sendRedirect("viewContent.tiles");
    		}
    		else
    			response.sendRedirect("editProfile.tiles");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		    	    	
    	//response.sendRedirect("register.jsp");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//request.getRequestDispatcher("viewContent.tiles").forward(request, response);
	}

}
