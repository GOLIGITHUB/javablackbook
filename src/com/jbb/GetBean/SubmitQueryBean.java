package com.jbb.GetBean;
import java.util.logging.Logger;

import com.jbb.GetDao.SubmitQuery;
public class SubmitQueryBean {
	
	private int id;
	private	String name;
	private	String email;
	private	String subject;
	private	String message;

	private static final Logger LOGGER = Logger.getLogger(SubmitQueryBean.class.getName());
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
			this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getSubject() {
		return subject;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getMessage() {
		return message;
	}
	
	@Override
	public String toString() {
		LOGGER.info("SubmitQueryBean :toString() method invoke");
		return id +"  "+name+"  "+email+"  "+subject+"  "+message;
	}
	
	
	public int executeBean(){
		int status=SubmitQuery.QueryInsert(this);
		LOGGER.info("SubmitQueryBean :executeBean() method invoke :: "+this.toString());
		LOGGER.info("SubmitQueryBean :executeBean() method invoke :: "+status);
		if(status>0){
		return status;
		}else{
		return status;
		}
	}

}
