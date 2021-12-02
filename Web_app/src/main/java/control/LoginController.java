package control;

import java.io.IOException;
//import java.lang.reflect.Member;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import enity.LoginModel;
import dao.ViewContentDAO;
import dao.userDAO;
import enity.Member;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private userDAO userDAO;

	public void init() {
		userDAO = new userDAO();
	}

	// Web_app/views/LoginController
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//    	        doGet(request, response);       
		String email = request.getParameter("Email");
		String password = request.getParameter("Password");
		String remember = request.getParameter("Remember");

		LoginModel login = new LoginModel();
		login.setEmail(email);
		login.setPass(password);
		try {
			if (userDAO.validate(login)) {
				HttpSession session = request.getSession();
				session.setAttribute("emailS", login.getEmail());
				session.setAttribute("passS", login.getPass());
				
				ViewContentDAO d = new ViewContentDAO();
				Member m = d.getMemberByEmail(email);
				session.setAttribute("member", m);
				
				// COOKIE
				// create cookie
				Cookie e = new Cookie("emailC", login.getEmail());
				Cookie p = new Cookie("passC", login.getPass());
				// set time
				e.setMaxAge(60*60*24);
				if (remember != null) {
					p.setMaxAge(60*60*24);
				} else {
					p.setMaxAge(0);
				}
				// add web browser
				response.addCookie(e);
				response.addCookie(p);
				if(userDAO.check_edit(login))
				{
					response.sendRedirect("editProfile.tiles");
				}
				else 
				{
					request.getRequestDispatcher("/ViewContentServlet").forward(request, response);
				}
			} else {
				
				request.setAttribute("error", "Login Failed");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				
				response.sendRedirect("login.jsp");
//    	    	        RequestDispatcher dispatcher = request.getRequestDispatcher("views/register.jsp");
//    	    	        dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
}
