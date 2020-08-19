<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.birla.cr.dao.*"  %>
<%@ page import="java.sql.*"  %>  
<!-- Enable for notification -->
<%-- 
   if(!(request.getParameter("viewstatus") == null)){
   		if(request.getParameter("viewstatus").equals("success")){--%>
	  <!--  <script>
	   alert("Student successfully verified!!!\n");
       window.location="coordinatorRequest.jsp?type=view";
		</script>-->
   <%--}else{--%>
	   	 <!--  <script>alert("Something Went Wrong!!!\nTry Again!!!");
       window.location="coordinatorRequest.jsp?type=view";
		</script>-->
   <%--}}--%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Campus Recruitmnet System</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700|Monsterrat:400,700|Merriweather:400,300italic,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Magnific Popup-->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	
	<!-- Cards -->
	<link rel="stylesheet" href="css/cards.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<style>

	</style>
	</head>
<body>
	<div id="fh5co-page">
		<nav class=" fh5co-nav-style-1" role="navigation" data-offcanvass-position="fh5co-offcanvass-left">
			<div  class="container">
				<div class="col-lg-12 col-md-8 col-sm-8 text-center fh5co-link-wrap">
					<ul *data-offcanvass="yes" style="text-transform: UPPERCASE; ">
						<li><a href="coordinatordashboard.jsp">Home</a></li>
						<li><a href="#contact">Contact Us</a></li>
						<li><a href="Logout">Logout</a></li>
					</ul>
				</div> 
			</div>
		</nav>
	</div>	
	<div class="fh5co-cover fh5co-cover-style-2 js-full-height" data-stellar-background-ratio="0.5" data-next="yes"  style="background-image: url(images/full_4.jpg);">
	<div class="container" style="padding-top:100px;">
		<div class="row">
	<% 
	request.getSession(false);
	Dao d =new Dao();
	ResultSet requestSet = d.getStudentRequest();
	if(request.getParameter("type").equals("view")){
	while(requestSet.next()){
		%>
		<div class="card" style="text-align:center;width:18%;magin-left:10px;padding:5px;border-radius:10px;margin-left:1%;margin-top:1%;">
			  <%if(requestSet.getString(12).equals("male")) {%>
			  <img class="card-img-top" src="images/male_icon.png" alt="">
			  <% }else{%>
				<img class="card-img-top" src="images/female_icon.png" alt=""> 
			  <%}%>
			  <div class="card-body">
				<form method="post" action="VerifyAccount">			  	
			  	<input type="hidden" name="uname" value="<%= requestSet.getString(1)%>"/>
				<input type="hidden" name="urole" value="<%= requestSet.getString(3)%>"/>
			    <h4 class="card-title"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<%= requestSet.getString(6)+" "+requestSet.getString(8)%></h4>
			    <h5 class="card-title"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;<%= requestSet.getString(1)%></h5>
			    <h6 class="card-title"><span class="glyphicon glyphicon-tag" aria-hidden="true"></span>&nbsp;<%= requestSet.getString(3)%></h6>
			  <%if(requestSet.getString(4).equals("Y")) {%>
			    <button type="submit" class="btn btn-success">Verified</button>
			  <% }else{%>
			    <button type="submit" class="btn btn-danger">Not Verified</button>
			  <%}%>
			  </form>
			  </div>
		</div>
		</div>
	<%}}
	
		if(request.getParameter("type").equals("delete")){
	while(requestSet.next()){
		if(requestSet.getString(4).equals("Y")){%>
		<div class="card" style="text-align:center;width:18%;magin-left:10px;padding:5px;border-radius:10px;margin-left:1%;margin-top:1%;">
			  <%if(requestSet.getString(12).equals("male")) {%>
			  <img class="card-img-top" src="images/male_icon.png" alt="">
			  <% }else{%>
				<img class="card-img-top" src="images/female_icon.png" alt=""> 
			  <%}%>
			  <div class="card-body">
				<form method="post" action="DeleteAccount">			  	
			  	<input type="hidden" name="uname" value="<%= requestSet.getString(1)%>"/>
				<input type="hidden" name="urole" value="<%= requestSet.getString(3)%>"/>
			    <h4 class="card-title"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<%= requestSet.getString(6)+" "+requestSet.getString(7)+" "+requestSet.getString(8)%></h4>
			    <h5 class="card-title"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;<%= requestSet.getString(1)%></h5>
			    <h6 class="card-title"><span class="glyphicon glyphicon-tag" aria-hidden="true"></span>&nbsp;<%= requestSet.getString(3)%></h6>
			    <button type="submit" class="btn btn-danger">Delete user</button>
			  </form>
			  </div>
		</div>
		</div>
	<%}}}%>
	
		</div>
</div>
	</div>
	
		<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
   <script src="js/jquery.waypoints.min.js"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- WOW -->
	<script src="js/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<!-- Main -->
	<script src="js/main.js"></script>
</body>
</html>