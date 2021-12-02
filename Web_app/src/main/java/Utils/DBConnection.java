package Utils;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBConnection {
	private static DBConnection instance = 
            new DBConnection();
    private static String DB_URL = "jdbc:mysql://localhost/doan";
    private static String USER_NAME = "root";
    private static String PASSWORD = "hoainam";
          
 public static void main(String args[]) {
        try {
        	new DBConnection();
			System.out.print(DBConnection.getConnection());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL , USER_NAME, PASSWORD);
            //System.out.println("connect successfully!");
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
        return conn;
    }
    public static DBConnection getInstance()   {
        return instance;
    }

}
