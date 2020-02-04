<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>  
<footer>
	<div class="row">
		<div class="span6 offset3">
			<ul class="social-networks">
				<li><a href="https://www.instagram.com"><i class="icon-circled icon-bgdark icon-instagram icon-2x"></i></a></li>
				<li><a href="https://twitter.com"><i class="icon-circled icon-bgdark icon-twitter icon-2x"></i></a></li>
				<li><a href="https://stackoverflow.com/"><i class="icon-circled icon-bgdark icon-dribbble icon-2x"></i></a></li>
				<li><a href="https://www.quora.com/"><i class="icon-circled icon-bgdark icon-pinterest icon-2x"></i></a></li>
			</ul>
			<p class="copyright">
				&copy; Copyright 2018
                <div class="credits">
                    <a href="https://www.javablackbook.com/">www.javablackbook.com</a>
                </div>
			</p>
		</div>
	</div>
</footer>
<%-- <%
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/resiaoon_resiaoon_jbb", "root", "root");
			out.print(connection);
			}catch(Exception exception){
			out.print("Exception    :"+exception);
		}
%> --%>