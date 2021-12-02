package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AddContentDao;
import dao.SearchDAO;
import enity.Content;
import enity.Member;

/**
 * Servlet implementation class Search
 */

public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// ---------------------------------------------
		String txtSearch = request.getParameter("search");

		HttpSession session = request.getSession();
		String email = session.getAttribute("emailS").toString();

		SearchDAO daosearch = new SearchDAO();
		AddContentDao dao = new AddContentDao();

		Member member = dao.getMemberByEmail(email);
		int id = member.getId();
		// --------------------------------	
		int page = 1;
        int recordsPerPage = 10;
        if(request.getParameter("page") != null)
            page = Integer.parseInt(request.getParameter("page"));
		
		
		
		
		// -------------------------------

		List<Content> list = daosearch.search(txtSearch, id,(page-1)*recordsPerPage,recordsPerPage);
		int noOfRecords = daosearch.getNoOfRecords();
		int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		
		if (txtSearch == "" || list.isEmpty()) {
			request.setAttribute("mess", "Không tìm thấy nội dung :(");
			request.getRequestDispatcher("search.tiles").forward(request, response);
		} else {
			
			request.setAttribute("listSearch", list);
			request.setAttribute("noOfPages", noOfPages);
	        request.setAttribute("currentPage", page);
			request.getRequestDispatcher("search.tiles").forward(request, response);
		}
	}

}