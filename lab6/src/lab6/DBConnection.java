package lab6;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static  String url = "jdbc:sqlserver://192.168.1.15:1433;databaseName=lab6;";
	public static  String user = "sa";
	public static  String password = "1234";
	public static Connection connection = null;
	
	static public Connection getConnection() {	
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) { 
			System.out.println(e);
		}		
		return connection;
	}
}
