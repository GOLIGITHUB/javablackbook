package com.jbb.GetConnection;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.util.Properties;
import java.util.logging.Logger;

public class ConnectionProvider  {
		private static final Logger LOGGER = Logger.getLogger(ConnectionProvider.class.getName());
	 	static Properties properties=null;
	    static InputStream inputStream=null;
	    static Connection connection=null;
		
public static Connection connectionProvider(){
		try	{
			inputStream=ConnectionProvider.class.getClassLoader().getResourceAsStream("com/jbb/properties/dataBaseInfo.properties");
			properties=new Properties();
			properties.load(inputStream);
			Class.forName(properties.getProperty("driver"));
			connection=DriverManager.getConnection(properties.getProperty("url"), properties.getProperty("user"),properties.getProperty("password"));
			LOGGER.info("ConnectionProvider : Connection is Created");
		}catch(Exception exception){
			LOGGER.info("ConnectionProvider : Connection connectionProvider() Method Exception : "+exception);
		}
		return connection;
	}	
}