package com.jbb.GetDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Logger;

import com.jbb.GetBean.BlogBean;
import com.jbb.GetConnection.ConnectionProvider;

public class BlogDao {
	private static final Logger LOGGER = Logger.getLogger(SubmitQuery.class.getName());
	
	public static BlogBean getBlogMessage(BlogBean blogBean) {
		try {
			Connection connection=ConnectionProvider.connectionProvider();
			LOGGER.info(BlogBean.getCurrentDateTmeSecond()+":"+BlogBean.hostname()+":Process ID"+":"+"Connection create");
			PreparedStatement statement=connection.prepareStatement("SELECT * FROM jbb.blog");
			ResultSet resultSet=statement.executeQuery();
			LOGGER.info(BlogBean.getCurrentDateTmeSecond()+":"+BlogBean.hostname()+":Process ID"+":"+"Execute query");
			while(resultSet.next()) {
				blogBean.setBlogSubject(resultSet.getString("blogSubject"));
				blogBean.setBlogSubject(resultSet.getString("blogtime"));
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		return blogBean;
	}
	
	
	public static void main(String[] args) {
		BlogBean blogBean=new BlogBean();
		System.out.println(BlogDao.getBlogMessage(blogBean));
		
	}
}
