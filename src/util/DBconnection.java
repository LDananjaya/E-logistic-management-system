package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection extends CommonUtil{
	
	
	private static Connection connection;
	   
	   
	// This works according to singleton pattern
		private  DBconnection() {
		}

		
		public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
			

		   	
	      		
			if (connection == null || connection.isClosed()) {

				Class.forName(properties.getProperty(CommonConst.DRIVER_NAME));
			connection = DriverManager.getConnection(properties.getProperty(CommonConst.URL),
						properties.getProperty(CommonConst.USERNAME), properties.getProperty(CommonConst.PASSWORD));
			}
			return connection;
		}
		
	

}
