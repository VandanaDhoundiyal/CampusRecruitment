<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<% String err=request.getParameter("err");
  if(err!=null){
	  if(err.equals("fail")){ %>
		 <script>
		 alert("Something wrong with this post.\nTry again !!!.");
		 window.location="addPost.jsp";
    		 </script> 
	  <%}
  }%>
<!DOCTYPE html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Campus Recuritment System &mdash;</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	-->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700|Monsterrat:400,700|Merriweather:400,300italic,700' rel='stylesheet' type='text/css'>
	
<link rel="stylesheet" href="signup.css">

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
	.button a {
  display: block;
  height: 50px;
  width: 200px;
  background: #00b7ea;
  color:white;
}

.button a {
  display: block;
  height: 50px;
  width: 200px;
  background: #00b7ea;
  align-items: center;
  font: 17px/50px Helvetica, Verdana, sans-serif;
  text-decoration: none;
  text-align: center;
  text-transform: uppercase;

}
</style>
<script>
function disableMarks(value){
 if(value == 'intermediate'){	
	 document.getElementById('collegemarks').disbaled=true; 			
}else{
	 document.getElementById('collegemarks').disbaled=false; 			
}
} 
</script>
	</head>
	<body >
	
	<div id="fh5co-page" style="height:1000px;background: rgba(0, 0, 0, 0.6);z-index: 4;" >
		<nav class="fh5co-nav-style-1" role="navigation" data-offcanvass-position="fh5co-offcanvass-left">
			<div class="container">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 fh5co-logo">
					<a href="#" class="js-fh5co-mobile-toggle fh5co-nav-toggle"><i></i></a>
					<a href="#" style="font-size:18px;">Campus Recuritment System </a>
				</div>
				<div class="col-lg-6 col-md-5 col-sm-5 text-center fh5co-link-wrap">
					<ul data-offcanvass="yes">
						<li ><a href="index.jsp">Home</a></li>
						<li class="active"><a href="#">Signup Student Here</a></li>
					</ul>
				</div> 
			</div>
		</nav>

<br><br>

<!-- Signup   form -->

<div class="signup-page" >
  <div class="form">
    <form class="signup-form" action="AddPost" method="post" enctype="multipart/form-data" >
      <input type="text"  name="postTitle" placeholder="Enter company Name *" required />
      <input type="text"  name="postCollege" placeholder="Enter College Name *" required />
      <input type="date" style="width:48.5%; " maxlength="15" name="postStartDate" placeholder="Enter Start Date*" required />
      <input type="date" style="float:right;width:48.5%; " maxlength="15" name="postEndDate" placeholder="Enter End Date" required />
      <input type="text" style="width:48%; " maxlength="15" name="postCourse" placeholder="Enter Course*" required />
      <input type="text" style="float:right;width:48%; " maxlength="15" name="postBranch" placeholder="Enter Branch [ Seperated by comma if multiple ]" required />
      <textarea  style="width:96%;background-color:#F5F5F5;border-color:#F5F5F5;" name="address" maxlength="100" placeholder="Enter Venue Address *" required ></textarea>
	  <input type="file"  name="postImage" placeholder="Enter Image *" required />	
	
      <button id="login_button" type="submit" >Signup</button>
    </form>
  </div>

	</div></div>
	<!-- END page-->

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
