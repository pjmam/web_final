package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Utils.DBConnection;
import enity.Content;

public class SearchDAO {

	Connection conn = null;
	PreparedStatement ps = null;
	Statement stmt;
	ResultSet rs = null;
	private int noOfRecords;
	  private static Connection getConnection1() 
	            throws SQLException, 
	                ClassNotFoundException 
	    {
	    	DBConnection.getInstance();
			Connection con = DBConnection.getConnection();
	        return con;
	    }
	     
	public List<Content> search(String txtSearch, int id,int index,int noOfRecords) {
		
		
		
		
		List<Content> list = new ArrayList<>();
		
		String query = "select id,Title,Brief,CreatedDate from Content where (Title like '%"+ txtSearch +"%' or Brief like '%"+ txtSearch+ "%') and AuthorId="+id+"  limit "+index+", "+noOfRecords;
		Content content = null;
		try {
            conn = getConnection1();
            stmt = conn.createStatement();
            
            
            ResultSet rs = stmt.executeQuery(query);
            
            while (rs.next()) {
            	content = new Content();
            	content.setId(rs.getInt("id"));
            	content.setTitle(rs.getString("Title"));
            	content.setBrief(rs.getString("Brief"));
            	content.setCreateDate(rs.getTimestamp("CreatedDate"));
                list.add(content);
            }
            rs.close();
             
            rs = stmt.executeQuery("SELECT FOUND_ROWS()");
            if(rs.next())
                this.noOfRecords = rs.getInt(1);
		} catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }finally
        {
            try {
                if(stmt != null)
                    stmt.close();
                if(conn != null)
                    conn.close();
                } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
	}
	
	private Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}

	public int getCount(int id) { 
		String	 query="select count(*) from Content where AuthorId = ?";
		try { conn =	 DBConnection.getConnection();
		// mở kết nối với mýql ps =
	  conn.prepareStatement(query);
	  ps.setInt(1, id); 
	  rs = ps.executeQuery();
	  while	  (rs.next()) {
		  return rs.getInt(1); }
	  } catch (Exception e) 
		{ // TODO: handle
	  
	  }
		return 0;
		}
	 public int getNoOfRecords() {
	        return noOfRecords;
	    }
	
	

	private void printSQLException(SQLException ex) {
		// TODO Auto-generated method stub
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}