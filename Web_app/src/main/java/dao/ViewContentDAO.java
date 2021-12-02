package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import Utils.DBConnection;
import enity.Content;
import enity.Member;

public class ViewContentDAO {
	Connection connection;
	Statement stmt;
	PreparedStatement ps=null;
	private int noOfRecords;

	public ViewContentDAO() {
	}

	private static Connection getConnection() throws SQLException, ClassNotFoundException {
		DBConnection.getInstance();
		Connection con = DBConnection.getConnection();
		return con;
	}

	public List<Content> viewAllContent(int authorId ,int offset, int noOfRecords) {
		String query = "select SQL_CALC_FOUND_ROWS * from content where AuthorId = ? limit " + offset + ", " + noOfRecords;
		List<Content> list = new ArrayList<Content>();
		Content content = null;
		try {
			connection = getConnection();
			//ps = connection.prepareStatement(query);
			//ps.setInt(1,authorId);			
			//ResultSet rs = ps.executeQuery();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, authorId);
            ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				content = new Content(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getTimestamp(5),
						rs.getTimestamp(6),
						rs.getInt(7),
						rs.getInt(8));
				list.add(content);
			}
			rs.close();
			stmt = connection.createStatement();
			rs = stmt.executeQuery("SELECT FOUND_ROWS()");
			if (rs.next())
				this.noOfRecords = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public Member getMemberByEmail(String email){
		Member member = null;
		Connection connection = DBConnection.getConnection();
		try {
			ps = connection.prepareStatement("select * from member where email =?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
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
	public int getNoOfRecords() {
		return noOfRecords;
	}
	public static void main(String[] args) {
		ViewContentDAO dao = new ViewContentDAO();
		List<Content> l = dao.viewAllContent(11, 1, 10);
		for(Content c : l){
			System.out.println(c);
		}
	}
	
	
}