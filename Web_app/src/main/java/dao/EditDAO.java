package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import enity.Member;
import Utils.DBConnection;
public class EditDAO {
	public EditDAO() {}
	
	private static final String UPDATE_PRO_SQL = "update member set FirstName=?, LastName=?, Phone=?, Description=?, UpdateTime=? where Email=?; ";
	
	private static Connection getConnection() 
	 
	{
		DBConnection.getInstance();
		Connection con = DBConnection.getConnection();
		return con;
	}
	
	public boolean editUser(Member user, String mail) throws SQLException   
    {
    	//Class.forName("com.mysql.jdbc.Driver");
        boolean rowUpdated;
        try (Connection connection = getConnection(); 
        		PreparedStatement statement = connection.prepareStatement(UPDATE_PRO_SQL);) 
        {
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(4, user.getDescription());
            statement.setString(3, user.getPhone());               
            statement.setTimestamp(5, java.sql.Timestamp.valueOf(java.time.LocalDateTime.now()));
            statement.setString(6, mail );
                           
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }       
	
	public Member getByEmail(String mail)
    {
		Member member = null;
		Connection connection = DBConnection.getConnection();
		try {
			PreparedStatement statement = connection.prepareStatement("select FirstName,LastName,Phone,Description from member where Email=?");
			statement.setString(1, mail);
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				 member= new Member(rs.getString(1),
						 rs.getString(2),
						 rs.getString(3),
						 rs.getString(4));
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return member;
    }
	
	private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
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
