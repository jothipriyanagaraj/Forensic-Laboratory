<%@page import="dbcon.Regdbcon" %>

    <%@page import="java.util.*" %>
    
<%@page import="java.sql.*" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Online hospital management</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Infirmary Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css3/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css3/jquery-ui.css" />
<link href="css3/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css3/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js3/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js3/numscroller-1.0.js"></script>

<!-- //js -->


<!-- fonts -->
<link href='//fonts3.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts3.googleapis.com/css?family=Viga' rel='stylesheet' type='text/css'>

	<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js3/move-top.js"></script>
		<script type="text/javascript" src="js3/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
	<!-- start-smoth-scrolling -->

<!--start-date-piker-->
	<script src="js3/jquery-ui.js"></script>
		<script>
			$(function() {
				$( "#datepicker,#datepicker1" ).datepicker();
			});
		</script>
<!--/End-date-piker-->
	<script src="js3/responsiveslides.min.js"></script>
			<!--animate-->
<link href="css3/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js3/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
</head>
<style>

table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;  
      
}
</style>
<body>
<!-- header -->
<div class="header wow zoomIn">
	<div class="container">
	
		<div class="header_right">
			<div class="login">
				<ul>
					<li>
						<div class="search-bar">
						
							<script src="js3/jquery.magnific-popup.js" type="text/javascript"></script>
								<div id="small-dialog" class="mfp-hide">
									<div class="search-top">
										<div class="login_pop">
											<form action="#" method="post">
												<input type="submit" value="">
												<input type="text" name="Type something..." value="Type something..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
											</form>
										</div>				
									</div>
									<script>
												$(document).ready(function() {
												$('.popup-with-zoom-anim').magnificPopup({
													type: 'inline',
													fixedContentPos: false,
													fixedBgPos: true,
													overflowY: 'auto',
													closeBtnInside: true,
													preloader: false,
													midClick: true,
													removalDelay: 300,
													mainClass: 'my-mfp-zoom-in'
												});
																												
												});
									</script>				
								</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header -->
<div class="header-bottom ">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="logo grid">
						<div class="grid__item color-3">
							<h1><a class="link link--nukun" href="index.html"><i></i>ONLINE<span>HOSPITAL</span>MANAGEMENT</a></h1>
						</div>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--horatio">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item menu__item--current"><a href="patientmain.jsp" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="doctordropdownlist.jsp" class="menu__link">Doctors List</a></li>
							
							<li class="menu__item"><a href="searchjs.jsp" class="menu__link">search</a></li> 
							<li class="menu__item"><a href="patientinboxmessagess.jsp" class="menu__link">Notifications()</a></li> 
							<li class="menu__item"><a href="CENTER.jsp" class="menu__link">Logout</a></li> 
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>

<!-- banner -->
<div class="banner">

				<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						 // Slideshow 4
						$("#slider3").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
							}
							});
						});
				</script>
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<div class="banner1">
						<div class="container">
							<div class="banner-info">
							
							 <table  align="center" style="margin-top: 100px; width:50%;color:white">
			<tr>
<th  align="center"><font color="red" >DoctorEmail</font></th>
<th  align="center">  <font color="red" >Specialization</font></th>
<th  align="center">  <font color="red" >Whicharea</font></th>
<th  align="center">     <font color="red" >Date</font></th>
<th  align="center">         <font color="red" >Experiance</font></th>
<th  align="center">   <font color="red" >Chat</font></th>



	
	</tr>
   
   
  
		  <%
		  
		  String  user=request.getParameter("name");
   
 
   String Specialization="";
   String Whicharea="";
   String Date="";
   String Experiance="";
   
   PreparedStatement ps=null;
	Connection con=null;

   
   
   con=Regdbcon.CreateConnection();
	PreparedStatement ps1=con.prepareStatement("SELECT * FROM `doctorreg`.`register` where email='"+user+"'");
   
	ResultSet rs=ps1.executeQuery();

	while(rs.next()){
		
		user=rs.getString(1);
		Specialization=rs.getString(4);
		Whicharea=rs.getString(5);
		Date=rs.getString(6);
		Experiance=rs.getString(7);
		
	%>
		
		
	<tr>
		<td align="left"><font color="red"><%=user%></font></td>
<td align="left"><font color="red"><%=Specialization%></font></td>
<td align="left"><font color="red"><%=Whicharea%></font></td>
<td align="left"><font color="red"><%=Date%></font></td>
<td align="left"><font color="red"><%=Experiance%></font></td>




<td align="left"><a href="Search_name_servlet?search=<%=user%>"><button><font color="red">text</font></button></a></td>

<%-- <td align="center" ><%=filecontent%></td> --%>

	
		</tr>
		
		
		
	<%} %>
	
	
		


	
		
		
		
	
	
	
	
	

	
	</table>
	   
	   
							</div>
						</div>
					</div>
				</li> 
				
				
				
			</ul>
		</div>
		<div class="clearfix"></div>
</div>
<!-- //banner -->
<!-- content -->

<!-- //content -->
<!-- services -->

<!-- //services -->
<!-- team -->

<!-- team -->
<!-- capabilities -->

<!-- //capabilities -->
<!-- contact -->

<!-- //contact -->
<!-- login -->
			
<!-- //login -->
<!-- login -->
			
<!-- //login -->
<script type="text/javascript" src="js3/bootstrap-3.1.1.min.js"></script>
</body>
</html>

