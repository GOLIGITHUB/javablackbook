package com.jbb.GetBean;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class BlogBean {
	
	int blogId;
	String blogSubject;
	String blogDate;
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public String getBlogSubject() {
		return blogSubject;
	}
	public void setBlogSubject(String blogSubject) {
		this.blogSubject = blogSubject;
	}
	public String getBlogDate() {
		return blogDate;
	}
	public void setBlogDate(String blogDate) {
		this.blogDate = blogDate;
	}
	
	@Override
	public String toString() {
		return blogId + " " + blogSubject + " " + blogDate;
	}
	
	
	public static String getCurrentDateTmeSecond() {
		LocalDateTime current = LocalDateTime.now();
		DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");   
		String formatedDateTime = current.format(format);   
	return formatedDateTime;
	}
	
	public static String hostname() {
		String hostname=null;
		try {
			InetAddress address=InetAddress.getLocalHost();
			hostname=address.getHostName();
		} catch (Exception e) {
		System.out.println("Hostname : error");	
		}
		return hostname;
	}
}
