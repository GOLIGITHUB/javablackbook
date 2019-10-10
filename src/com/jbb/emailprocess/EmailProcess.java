package com.jbb.emailprocess;
import java.util.Properties;
import java.util.logging.Logger;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



import com.app.SMTP.Properties.SmtpProperties;
public class EmailProcess {
	
	private static final Logger LOGGER = Logger.getLogger(EmailProcess.class.getName());
	
	public static void sendEmail(String email) {
		try{ 
			Properties properties=SmtpProperties.getSmtpProperties();
		  	Session  sessionx = Session.getInstance(properties,
   		    new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("javablackbook@gmail.com","*1&2^3J9B01B5");
				}
			});
		     Message message = new MimeMessage(sessionx);
		  	 message.setFrom(new InternetAddress("javablackbook@gmail.com"));
			 message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
			 message.setSubject("Dear "+email);
			 message.setText("Dear "+email+", Thank's for your suggestion."
						+"\n\n We will response as soon as possible." 
					+ "\n\n thanks");
				Transport.send(message);
				LOGGER.info("EmailProcess : Email Send Successfully : " +email);  
		  }catch(Exception exception){
			  LOGGER.info("EmailProcess : Email Send Exception : "+exception);
		  }
			
		}
}


