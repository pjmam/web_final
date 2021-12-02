package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EditDAO;
import enity.Member;


@WebServlet(urlPatterns = {"/editProfile"})
public class DataController extends javax.servlet.http.HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EditDAO user= new EditDAO();
		RequestDispatcher rd;
    	HttpSession session=req.getSession(false);
    	String mail=(String)session.getAttribute("emailS");
    	Member member = new Member();
    	member= user.getByEmail(mail);
    	//System.out.println(mail);  	        	
    	try {
    		session.setAttribute("member_edit", member);
    		//System.out.println("1111");
    		rd=req.getRequestDispatcher("editProfile.tiles"); 
			rd.forward(req, resp);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
    	
    	//req.getRequestDispatcher("editProfile.tiles").forward(req, resp);
    	//req.getRequestDispatcher("viewContent.tiles").forward(req, resp);
    	//System.out.println(member);
	}
}
