<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<% String err=request.getParameter("err");
  if(err!=null){
	  if(err.equals("duplicateemail")){ %>
		 <script>
		 alert("Something wrong with this email.\nTry again !!!.");
		 window.location="signupstudent.jsp";
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
						<p style="color:white;">Student Signup Here</p>
					</ul>
				</div> 
			</div>
		</nav>

<br><br>

<!-- Signup   form -->

<div class="signup-page" >
  <div class="form">
    <form class="signup-form" action="StudentSignupImpl" method="post" >
      <input type="email"  name="email" placeholder="Enter valid email *" required />
      <input type="password" name="password" placeholder="Enter password here *" required />
      <input type="text" style="width:32%; float:left;" maxlength="15" name="f_name" placeholder="First Name *" required />
      <input type="text" style="width:32%; " maxlength="15" name="m_name" placeholder="Middle Name " />
      <input type="text" style="width:32%; " maxlength="15" name="l_name" placeholder="Last Name *" required />
      <input type="text" style="width:48%;float:left;"name="father_name" placeholder="Enter Father Name *" required />
      <input type="text" style="width:48%;"name="mother_name" placeholder="Enter Mother Name *" required />
      <input type="date" style="width:48%;float:left;"name="dob" placeholder="Enter DOB *" required />
      <select style="width:48%;padding:15px;background-color:#F5F5F5;border-color:#F5F5F5;" name="gender">
      		<option  value="none" selected>Gender *</option>
      		<option  value="male">Male</option>
      		<option  value="female">Female</option>
      </select>
      <br/><br>
      <select style="width:32%;padding:15px;background-color:#F5F5F5;border-color:#F5F5F5;float:left;" name="course">
      		<option  value="none" selected>Course *</option>
      		<option  value="btech">B.Tech</option>
      		<option  value="mca">MCA</option>
      </select>
      <select style="width:32%;padding:15px;background-color:#F5F5F5;border-color:#F5F5F5;" name="branch">
      		<option  value="none" selected>Branch *</option>
      		<option  value="cse">CSE</option>
      		<option  value="ece">ECE</option>
      </select>
      <input type="number" style="width:32%;" maxlength="15" name="passing_year" placeholder="Passing Year *" required />
      <textarea  style="width:96%;background-color:#F5F5F5;border-color:#F5F5F5;" name="address" maxlength="100" placeholder="Enter Your Address *" required ></textarea>
      <input type="number" style="width:48%; " maxlength="15" name="mobile" placeholder="Enter mobile number" required >
      <select style="width:48%;padding:15px;background-color:#F5F5F5;border-color:#F5F5F5;" name="qualification" onchange="javascript:disableMarks(this.value)">
      		<option  value="none" selected>Qualification *</option>
      		<option  value="intermediate">Intermediate</option>
      		<option  value="graduation">Graduation</option>
      </select>
      <input type="number" style="width:32%; " maxlength="15" name="highschool" placeholder="10th Marks *" required/>
      <input type="number" style="width:32%; " maxlength="15" name="inter" placeholder="12th Marks *" required/>
      <input type="number" style="width:32%; " maxlength="15" id="collegemarks" name="collegemarks" placeholder="College marks *" />
      
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
