package control;

import java.io.IOException;
import java.sql.Timestamp;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AddContentDao;
import enity.Content;
import enity.Member;


@WebServlet(urlPatterns = {"/addcontent","/editcontent","/removecontent"})
public class AddContentController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");
	    resp.setContentType("text/html; charset=UTF-8");
		
		RequestDispatcher rd;
		HttpSession session = req.getSession();
		String email=session.getAttribute("emailS").toString();
		AddContentDao dao = new AddContentDao();
		Member member= dao.getMemberByEmail(email);
		if (member==null) {
			rd=req.getRequestDispatcher("login.jsp"); 
			rd.forward(req, resp);  
		}
		
		int authorid= member.getId();
		
		String uri =req.getRequestURI() ;
		if (uri.equals("/Web_app/addcontent")) {
			String title=req.getParameter("title").toString();
			String brief= req.getParameter("brief").toString();
			String content= req.getParameter("content").toString();    
			Timestamp createDate = new Timestamp(System.currentTimeMillis());
			
			Content con = new Content();
			con.setTitle(title);
			con.setBrief(brief);
			con.setContent(content);
			if (con.Check()) {
				int sort=dao.getSortByAuthorid(authorid);
				int kq= dao.insertContent(con.getTitle(), con.getBrief(), con.getContent(), createDate, sort+1, authorid);
				if (kq>0) {
					RequestDispatcher dis=req.getRequestDispatcher("ViewContentServlet");          
					dis.forward(req, resp);   
				}
			}
			
		}
		if (uri.equals("/Web_app/editcontent")) {
			//AddContentDao dao = new AddContentDao();     
			int id =  Integer.parseInt(req.getParameter("idcontent")) ;
			String title =  req.getParameter("title") ;
			String brief =  req.getParameter("brief") ;
			String content =  req.getParameter("content") ;
			Timestamp updateDate=new Timestamp(System.currentTimeMillis());
			int count =dao.updateContent(title, brief, content, updateDate, id);
			if (count > 0) {
				rd=req.getRequestDispatcher("ViewContentServlet"); 
				rd.forward(req, resp);
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AddContentDao dao = new AddContentDao(); 
		RequestDispatcher rd;
		String action =req.getParameter("action");
		int id =  Integer.parseInt(req.getParameter("id")) ;
		
		if(action.equals("edit")) {
			Content con = dao.getContentByID(id); 
			req.setAttribute("content", con);
			rd=req.getRequestDispatcher("addContent.tiles"); 
			rd.forward(req, resp);  
			System.out.println(con.getBrief());
		}
		if (action.equals("remove")) {
			int count =dao.removeContent(id);
			if (count > 0) {
				rd=req.getRequestDispatcher("ViewContentServlet"); 
				rd.forward(req, resp);
			}
		}
	}
}
