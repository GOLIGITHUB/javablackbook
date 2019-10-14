package com.jbb.GetDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import com.jbb.GetBean.BlogBean;
import com.jbb.GetConnection.ConnectionProvider;

public class BlogDao {
	private static final Logger LOGGER = Logger.getLogger(SubmitQuery.class.getName());
	
	public static List<BlogBean> getBlogMessage() {
		List<BlogBean> list=null;
		BlogBean blogBean=null;
		try {
			Connection connection=ConnectionProvider.connectionProvider();
			LOGGER.info(BlogBean.getCurrentDateTmeSecond()+":"+BlogBean.hostname()+":Process ID"+":"+"Connection create");
			PreparedStatement statement=connection.prepareStatement("SELECT * FROM jbb.blog");
			ResultSet resultSet=statement.executeQuery();
			LOGGER.info(BlogBean.getCurrentDateTmeSecond()+":"+BlogBean.hostname()+":Process ID"+":"+"Execute query");
			list=new ArrayList<BlogBean>();
			while(resultSet.next()) {
				blogBean=new BlogBean();
				blogBean.setBlogId(resultSet.getInt("id"));
				blogBean.setBlogSubject(resultSet.getString("blogSubject"));
				blogBean.setBlogCreateDate(resultSet.getString("blogCreateDate"));
				blogBean.setBlogView(resultSet.getString("blogView"));
				list.add(blogBean);
			}
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	
	/*
	 * public static void main(String[] args) { List<BlogBean>
	 * list=BlogDao.getBlogMessage(); for (BlogBean blogBean2 : list) {
	 * System.out.println("12: "+blogBean2); }
	 * 
	 * }
	 */
}
