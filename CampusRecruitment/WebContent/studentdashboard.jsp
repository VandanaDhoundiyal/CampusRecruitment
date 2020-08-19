<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
    <%@ page import="com.birla.cr.dao.*"  %>
    <%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html class="no-js"> 
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Campus Recruitment System</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

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
	.profile_icon{
	text-transform: UPPERCASE;
	}
	</style>
	</head>
<body>
<% 
	request.getSession(false);
	Dao d =new Dao();
	String p_arr[] = d.getStudentProfile(session.getAttribute("u_name").toString());
%>

	<div id="fh5co-page">
		<nav class=" fh5co-nav-style-1" role="navigation" data-offcanvass-position="fh5co-offcanvass-left">
			<div  class="container">
				<div class="col-lg-12 col-md-8 col-sm-8 text-center fh5co-link-wrap">
					<ul *data-offcanvass="yes" style="text-transform: UPPERCASE; ">
					<%  if(p_arr[2] != null){%>
						<li class="active"><a href="active">Welcome <%=p_arr[1] +" "+ p_arr[2]+" "+p_arr[3] %></a></li>
						<%}else{%>
						<li class="active"><a href="active">Welcome <%=p_arr[1] +" "+p_arr[3] %></a></li>							
						<%} %>						
						<li><a href="#services">Update</a></li>
						<li><a href="Logout">Logout</a></li>
					</ul>
				</div> 
			</div>
		</nav>
		
		<div class="fh5co-cover fh5co-cover-style-2 js-full-height" data-stellar-background-ratio="0.5" data-next="yes"  style="background-image: url(images/full_1.jpg);">
		<div class="fh5co-features-style-1" data-stellar-background-ratio="0.5">
			<div class="fh5co-overlay"></div>
			
			<!-- Profile Box -->
			<div class="container" style="z-index: 3; position: relative;">
				<div class="row p-b">
					<div class="col-md-6 col-md-offset-3 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
					</div>
				</div>
				<div class="row">
					<div class="fh5co-features">
						<div class="fh5co-feature wow fadeInUp profile_icon" data-wow-duration="1s" data-wow-delay=".8s">
							<div class="icon"><i class="icon-mail2"></i></div>
							<p><%=p_arr[0]%></p>
						</div>
						<div class="fh5co-feature wow fadeInUp profile_icon" data-wow-duration="1s" data-wow-delay="1.1s">
							<div class="icon"><i class="icon-ribbon"></i></div>
							<p><%= session.getAttribute("role")%></p>
						</div>
						<div class="fh5co-feature wow fadeInUp profile_icon" data-wow-duration="1s" data-wow-delay="1.4s">
							<div class="icon"><i class=" icon-phone"></i></div>
							<p><%=p_arr[8]%></p>
						</div>
						<div class="fh5co-feature wow fadeInUp profile_icon" data-wow-duration="1s" data-wow-delay="1.4s">
							<div class="icon"><i class=" icon-monitor"></i></div>
							<%  if(p_arr[2] != null){%>
						<p><%=p_arr[11] + " + " + p_arr[12]%><p>
						<%}else{%>
						<p><%=p_arr[11]%></p>							
						<%} %>		
						</div>
						<div class="fh5co-feature wow fadeInUp profile_icon" data-wow-duration="1s" data-wow-delay="1.4s">
							<div class="icon"><i class=" icon-home"></i></div>
							<p><%=p_arr[10]%></p>
						</div>
						<div class="fh5co-feature wow fadeInUp profile_icon" data-wow-duration="1s" data-wow-delay="1.4s">
							<div class="icon"><i class=" icon-user"></i></div>
							<p><%=p_arr[7]%></p>
						</div>

					</div>
				</div>
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