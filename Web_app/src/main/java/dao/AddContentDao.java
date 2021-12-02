package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import enity.Content;
import enity.Member;
import Utils.DBConnection;

public class AddContentDao {
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs = null;
	
	String getall = "select * from content";
	//select max(sort) from content where authorid = 10
	
	public List<Content> getAllContent(){
		List<Content> list = new ArrayList<>();
		conn = DBConnection.getConnection();
		try {
			ps = conn.prepareStatement(getall);
			rs = ps.executeQuery();
			while (rs.next()) {
				Content content = new Content(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getTimestamp(5),
						rs.getTimestamp(6),
						rs.getInt(7),
						rs.getInt(8));
				list.add(content);
				
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}
	public int getSortByAuthorid(int id){
		int count = 0;
		conn = DBConnection.getConnection();
		try {
			ps = conn.prepareStatement("select max(sort) from content where authorid =?");
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				 count =rs.getInt(1);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return count;
	}
	public Content getContentByID(int id){
		Content content = null;
		conn = DBConnection.getConnection();
		try {
			ps = conn.prepareStatement("select * from content where id =?");
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				 content = new Content(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getTimestamp(5),
						rs.getTimestamp(6),
						rs.getInt(7),
						rs.getInt(8));
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return content;
	}
	public Member getMemberByEmail(String email){
		Member member = null;
		conn = DBConnection.getConnection();
		try {
			ps = conn.prepareStatement("select * from member where email =?");
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next()) {
				 member= new Member(rs.getInt(1), 
						 rs.getString(2), 
						 rs.getString(3), 
						 rs.getString(4), 
						 rs.getString(5), 
						 rs.getString(6), 
						 rs.getString(7), 
						 rs.getString(8), 
						 rs.getTimestamp(9), 
						 rs.getTimestamp(10));
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return member;
	}
	
	public int insertContent(String title , String brief ,String content,Timestamp credate ,int sort ,int authorid){
		conn = DBConnection.getConnection();
		int count =0;
		try {
			ps = conn.prepareStatement("INSERT INTO Content(Title,Brief,Content,CreatedDate,Sort,AuthorId) VALUES(?,?,?,?,?,?)");
			ps.setString(1, title);
			ps.setString(2, brief);
			ps.setString(3, content);
			ps.setTimestamp(4, credate);
			ps.setInt(5, sort);
			ps.setInt(6, authorid);
			count =ps.executeUpdate();
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return count;
		
	}
	public int updateContent(String title , String brief ,String content,Timestamp updatetime ,int id){

		conn = DBConnection.getConnection();
		int count =0;
		try {
			ps = conn.prepareStatement("update content set title=?,brief=?,content=?,updatetime=? where id=?");
			ps.setString(1, title);
			ps.setString(2, brief);
			ps.setString(3, content);
			ps.setTimestamp(4, updatetime);
			ps.setInt(5, id);
			count =ps.executeUpdate();
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return count;
		
	}
	public int removeContent(int id){
		conn = DBConnection.getConnection();
		int count =0;
		try {
			ps = conn.prepareStatement("delete from content where id =?;");
			ps.setInt(1, id);
			count =ps.executeUpdate();
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return count;
		
	}
	public static void main(String[] args) {
		AddContentDao dao = new AddContentDao();

	    Timestamp createDate = new Timestamp(System.currentTimeMillis());
		
		int kq =dao.getSortByAuthorid(10);
		/*for (Content content : list) {
			 System.out.println(content.getCreateDate());
		}*/
		System.out.println(kq);
	 }
}
