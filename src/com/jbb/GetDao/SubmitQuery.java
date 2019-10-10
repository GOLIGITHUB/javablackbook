package com.jbb.GetDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Logger;

import com.jbb.GetBean.SubmitQueryBean;
import com.jbb.GetConnection.ConnectionProvider;


public class SubmitQuery {
	
	private static final Logger LOGGER = Logger.getLogger(SubmitQuery.class.getName());
	
	public static int QueryInsert(SubmitQueryBean sqb){
		int status=0;
		
		if(sqb.getName()!=null && sqb.getEmail()!=null && sqb.getSubject()!=null  && sqb.getMessage()!=null)
		 {
				try {
					Connection  connection=ConnectionProvider.connectionProvider();
					String sql="insert into qureysubmit (name,email,subject,message) values(?,?,?,?)";
					PreparedStatement ps=connection.prepareStatement(sql);
					ps.setString(1, sqb.getName().trim());
					ps.setString(2, sqb.getEmail().trim());
					ps.setString(3, sqb.getSubject().trim());
					ps.setString(4, sqb.getMessage().trim());
				    status=ps.executeUpdate();
				    connection.close();
					} catch (Exception e) {
					LOGGER.info("SubmitQuery : int QueryInsert(SubmitQueryBean object) Method Exception "+e);
					}
		  LOGGER.info("SubmitQuery : int QueryInsert(SubmitQueryBean object) Method Invoke "+status);		
		  return status;		
		 }
		LOGGER.info("SubmitQuery : int QueryInsert(SubmitQueryBean object) Method Invoke "+status);	
	 return status;		
	}

}
