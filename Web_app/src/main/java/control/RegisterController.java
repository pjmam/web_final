package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import enity.Member;
import dao.RegisterDAO;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private RegisterDAO registerDAO;

	public void init() {
		registerDAO = new RegisterDAO();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws  IOException, ServletException {
		String Username = request.getParameter("Username");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");
        Member check = new Member();
        check.setEmail(Email);
        try {
			if (registerDAO.check_email(check, Email))
			{				
				response.sendRedirect("register.jsp");
			}
			else
			{
				Member newUser = new Member(Username, Email, Password);       
				registerDAO.insertUser(newUser);
				response.sendRedirect("login.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws  IOException, ServletException {

		//request.getRequestDispatcher("login.jsp").forward(request, response);
	}
}
