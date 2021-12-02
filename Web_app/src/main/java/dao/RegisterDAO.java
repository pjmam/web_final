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

public class RegisterDAO {

	private static final String INSERT_USERS_SQL = "INSERT INTO member" + "  (UserName, Email, Password, CreatedDate) VALUES " +
	        " (?, ?, ?, current_timestamp);";
  
    private static final String Check_Email = "select * from member where Email = ? ";
    
    public RegisterDAO() {}
    
    private static Connection getConnection() 
	{
		DBConnection.getInstance();
		Connection con = DBConnection.getConnection();
		return con;
	}
    
    public boolean check_email(Member check, String mail) throws SQLException {
    	boolean test = false;
    	try (
    			Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(Check_Email);) {
    		preparedStatement.setString(1, mail);
    		
    		ResultSet rs = preparedStatement.executeQuery();
    		test = rs.next();
    	} catch (SQLException e) {
    		//printSQLException(e);
    	}
    	return test;
    }


	public void insertUser(Member user) throws SQLException 
    {
        System.out.println(INSERT_USERS_SQL);
        //Class.forName("com.mysql.jdbc.Driver");
        try (Connection connection = getConnection(); 
        	PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) 
        {
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            //printSQLException(e);
        }
    }
}
