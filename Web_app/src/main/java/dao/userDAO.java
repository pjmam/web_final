package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import enity.LoginModel;
import Utils.DBConnection;
public class userDAO {

//    private String jdbcURL = "jdbc:mysql://localhost:3306/project?useSSL=false";
//    private String jdbcUsername = "root";
//    private String jdbcPassword = "1234";

    
    private static final String CHECK_LOGIN = "select * from member where Email=? and Password=?";
    private static final String CHECK_EDIT = "select * from member where Email=? and Password=? and (Lastname IS NULL OR Firstname IS NULL OR Phone IS NULL OR Description IS NULL)" ;

    public userDAO() {}

//    protected Connection getConnection() {
//        Connection connection = null;
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
//        } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        return connection;
//    }
    	private static Connection getConnection() 
    			throws SQLException, 
                	ClassNotFoundException 
    	{
    		DBConnection.getInstance();
    		Connection con = DBConnection.getConnection();
    		return con;
    	}



        public boolean validate(LoginModel login) throws ClassNotFoundException {
            boolean status = false;
            Class.forName("com.mysql.jdbc.Driver");
            try (
            		Connection connection = getConnection();
            		//Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
//            		CHECK_LOGIN = "select * from member where Email=? and Password=?";
                PreparedStatement preparedStatement = connection.prepareStatement(CHECK_LOGIN);) {
                preparedStatement.setString(1, login.getEmail());
                preparedStatement.setString(2, login.getPass());
                
                
                ResultSet rs = preparedStatement.executeQuery();
                status = rs.next();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
            return status;
        }
        public boolean check_edit(LoginModel login) throws ClassNotFoundException {
            boolean status = false;
            Class.forName("com.mysql.jdbc.Driver");
            try (
            		Connection connection = getConnection();
            		//Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
//            		CHECK_LOGIN = "select * from member where Email=? and Password=?";
                PreparedStatement preparedStatement = connection.prepareStatement(CHECK_EDIT);) {
                preparedStatement.setString(1, login.getEmail());
                preparedStatement.setString(2, login.getPass());

                
                ResultSet rs = preparedStatement.executeQuery();
                status = rs.next();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
            return status;
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


