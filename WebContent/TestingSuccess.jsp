<%@page import="org.apache.commons.logging.Log"%>
<%@page import="org.apache.commons.logging.LogFactory"%>
<%@page import="com.jbb.emailprocess.EmailProcess"%>
<%@page import="org.apache.log4j.Logger"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="javax.mail.Multipart"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMultipart"%>
<%@page import="javax.activation.DataSource"%>
<%@page import="javax.activation.DataHandler"%>
<%@page import="javax.activation.FileDataSource"%>
<%@page import="javax.mail.BodyPart"%>
<%@page import="javax.mail.internet.MimeBodyPart"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="java.util.Properties"%>
<%@page import="com.app.SMTP.Properties.SmtpProperties"%>
<%@page import="com.jbb.GetDao.SubmitQuery"%>
<jsp:useBean id="sqb"  class="com.jbb.GetBean.SubmitQueryBean"/>
<jsp:setProperty property="*" name="sqb"/>
<%
Log logger = LogFactory.getLog( this.getClass(  ) );
		try{
			int status=SubmitQuery.QueryInsert(sqb);
			if(status>0){
				EmailProcess.sendEmail(sqb.getEmail().trim());
				out.print("Your message has been sent. Thank you!");
				logger.info("Your message has been sent. Thank you!");
			}else{
				out.print("Your message has been not sent. Thank you!");
				logger.error("Your message has been not sent. Thank you!");
			}
		}catch(Exception exception){
			out.print("Your message has been not sent. Thank you!");
			logger.error("Your message has been not sent. Thank you! "+exception);
		}
%>
 