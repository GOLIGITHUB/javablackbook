<%@taglib  uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<%@ page  isErrorPage="true" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<title><tiles:getAsString name="title"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="css/bootstrap-responsive.css" >
<link rel="stylesheet" href="css/bootstrap-theme.min.css" >
<link rel="stylesheet" href="css/bootstrap.min.css" >
<link rel="stylesheet" href="css/style.css" >
<link rel="stylesheet" href="color/default.css" >
<link rel="shortcut icon" href="img/favicon.ico">
<!-- =======================================================
    Author: Ashutosh Mishra
    Date:19.02.2017
======================================================= -->
</head>
<body>
<jsp:include page="navbar.jsp"/>
<%-- <h3><tiles:getAsString name="title"/></h3>
<hr> --%>
<div class="container">
	<tiles:insertAttribute name="body"/>
</div>
<jsp:include page="footer.jsp"/>
<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.scrollTo.js"></script>
<script src="js/jquery.nav.js"></script>
<script src="js/jquery.localscroll-1.2.7-min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/isotope.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/inview.js"></script>
<script src="js/animate.js"></script>
<script src="js/validate.js"></script>
<script src="js/custom.js"></script>
<script src="contactform/contactform.js"></script>
</body>
</html>
