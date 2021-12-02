package control;
 
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import enity.Content;
import enity.Member;
import dao.ViewContentDAO;

 
/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet(urlPatterns = {"/viewContent"})
public class ViewContentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewContentServlet() {
            super();
    }
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, 
            HttpServletResponse response) 
            throws ServletException, IOException {
    	 response.setContentType("text/html; charset=UTF-8") ;
    	 request.setCharacterEncoding("UTF-8");
    	HttpSession session = request.getSession();
        int page = 1;
        int recordsPerPage = 10;
        Member m = (Member)session.getAttribute("member");
        if(request.getParameter("page") != null)
            page = Integer.parseInt(request.getParameter("page"));
        ViewContentDAO dao = new ViewContentDAO();
        List<Content> list = dao.viewAllContent(m.getId(),(page-1)*recordsPerPage,recordsPerPage);

        int noOfRecords = dao.getNoOfRecords();
        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
        request.setAttribute("viewcontentList", list);
        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("currentPage", page);
        request.getRequestDispatcher("viewContent.tiles").forward(request, response);
    }
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}
}