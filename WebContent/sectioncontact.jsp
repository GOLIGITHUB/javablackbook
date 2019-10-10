<%@page session="true" %>
<script>
function AjaxCall() {
	console.log("Working in console");
	var name=document.getElementById("name").value;
	var email=document.getElementById("email").value;
	var subject=document.getElementById("subject").value;
	var message=document.getElementById("message").value;
	console.log(name+"  "+email+"  "+subject+"   "+message);
	var http= new XMLHttpRequest();
	var url="TestingSuccess.jsp";
	var parameters=("name="+name+"&email="+email+"&subject="+subject+"&message="+message);
	http.open("POST",url, true);
	http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	http.onreadystatechange = function() {
			 if(http.readyState==4){
				 var response=http.responseText;
				 console.log("Server Response : " +response.trim());
				 var message=document.getElementById("responseMessage").innerHTML=response;
				 document.getElementById("name").value = "";
				 document.getElementById("email").value = "";
				 document.getElementById("subject").value = "";
				 document.getElementById("message").value = "";
			} 
	};
	http.send(parameters);
}


</script>
<!-- end spacer section -->
<!-- section: contact -->
<section id="contact" class="section green">
<div class="container">
	<h4>Get in Touch</h4>
	<h5 id="responseMessage"></h5>	
	<div class="blankdivider30">
	</div>
	<div class="row">
		<div class="span12">
			<div class="cform" id="contact-form">
				  
				<form  role="form" class="contactForm" method="post" onsubmit="AjaxCall()">
					<div class="row">
						<div class="span6">
							<div class="field your-name form-group">
								<input type="text" name="name"  class="form-control" id="name" placeholder="Your Name" required  pattern="[a-zA-Z ]{1,15}"/>
                            </div>
							<div class="field your-email form-group">
								<input type="text" class="form-control" name="email" id="email" placeholder="Your Email"  required />
                          	</div>
							<div class="field subject form-group">
								<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required  pattern="[a-zA-Z ]{1,15}"/>
                          	</div>
						</div>
						<div class="span6">
							<div class="field message form-group">
								<textarea class="form-control" name="message" rows="5" id="message"  placeholder="Message" required ></textarea>
                            </div>
							<input type="submit" value="Send message" class="btn btn-theme pull-left">
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- ./span12 -->
	</div>
</div>
</section>