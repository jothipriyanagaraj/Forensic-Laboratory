<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="dbcon.Regdbcon" %>
<!--


Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Doctor Plus a Medical Category Flat bootstrap Responsive website Template | Home :: w3layouts</title>
<link href="css4/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css4/style.css" type="text/css" rel="stylesheet" media="all">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Doctor Plus Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<!-- js -->
<script src="js4/jquery-1.11.1.min.js"></script> 
<!-- //js -->	
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="js4/move-top.js"></script>
<script type="text/javascript" src="js4/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smoth-scrolling-->
</head>
<style>

table, th, td {
    border-collapse: collapse;
    border:1px solid white;
}
th, td {
    padding: 10px;
    text-align: left;    
}

</style>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><img src="images4/logo.png" alt="logo"/></a>					
			</div>
			<div class="header-info">
				<p>Information Service:</p>
				<h4>000-1234-1234</h4>
			</div>			
			<div class="clearfix"> </div>
		</div>	
	</div>
	<!--//header-->
	<!--header-bottom-->
	<div class="header-bottom">
		<div class="container">
			<!--top-nav-->
			<div class="top-nav cl-effect-5">
				<ul class="nav1">
					<li><a href="Doctormain.jsp" class="active"><span data-hover="Home">Home</span></a></li>
					<li><a href="file_uploads.jsp"> <span data-hover="File Upload">File Upload</span></a></li>
					<li><a href="Doctor_notificationss.jsp"> <span data-hover="Inbox()">Inbox()</span></a></li>
						<li><a href="Doctorprescription.jsp"> <span data-hover="Inbox()">SHARE </span></a></li>
					<li><a href="Doctornotf.jsp"> <span data-hover="Notifications()">Notifications()</span></a></li>
					
					<li><a href="CENTER.jsp"> <span data-hover="Logout">Logout</span></a></li>
				</ul>
				<!-- script-for-menu -->
				<script>
				   $( "span.menu-icon" ).click(function() {
					 $( "ul.nav1" ).slideToggle( 300, function() {
					 // Animation complete.
					  });
					 });
				</script>
				<!-- /script-for-menu -->
			</div>
			<!--//top-nav-->
			<div class="clearfix"> </div>
		</div>
	</div>
	<%
	
	
	HttpSession ses1= request.getSession(true);
	String user=(String)ses1.getAttribute("mail");
	
	
	

Random r= new Random(); 

String key="ABCDEF123456789";
char c=key.charAt(r.nextInt(key.length()));
char c1=key.charAt(r.nextInt(key.length()));
char c2=key.charAt(r.nextInt(key.length()));
char c3=key.charAt(r.nextInt(key.length()));
char c4=key.charAt(r.nextInt(key.length()));
char c5=key.charAt(r.nextInt(key.length()));

String Secretkey=""+c+""+c1+""+c2+""+c3+""+c4+""+c5;
System.out.print(Secretkey);



%>
	
	<!--//header-bottom-->
	<!--banner-->
	<div class="banner">
		<div class="container ">
			<!-- banner-text Slider starts Here -->
			<script src="js4/responsiveslides.min.js"></script>
			 <script>
				// You can also use "$(window).load(function() {"
					$(function () {
					// Slideshow 4
						$("#slider3").responsiveSlides({
						auto: true,
						pager:true,
						nav:false,
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
			
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container">
			<center>
			 <table  align="center" style="margin-top: 100px; width:50%;color:black">
			<tr>
		
<th  align="center"><font color="red">Message</font></th>
<th  align="center"><font color="red">Patient</font></th>
<th  align="center"><font color="red">status</font></th>
	
	</tr>
   
   
  
		  <%
		  
		  
	        String doc=(String)ses1.getAttribute("mail");

   
		  
		  String user1=(String)ses1.getAttribute("mail");
		  
		  String mes="";
		  String pat="";
		  String encrypt="";
   
	Connection con=null;

   
   
   con=Regdbcon.CreateConnection();
	PreparedStatement ps1=con.prepareStatement("SELECT * FROM doctorreg.message where doctor = '"+doc+"'" );
   
	ResultSet rs=ps1.executeQuery();

	while(rs.next()){
		
		mes=rs.getString(2);
		
		pat=rs.getString(3);
	
	
	
	%>
		
	
	
	

		
		
	<tr>
	<td align="left"><%=mes%></td>
<td align="left"><%=pat%></td>
<td align="left"><a href="Doctorprescription.jsp?d=<%=doc%>&&me=<%=mes%>&&p=<%=pat%>"><button>Upload</button></a></td>



		</tr>
		
		
		
	<%} %>
	
	
		


	
		
		
		
	
	
	
	
	

	
	</table>
	   
				</center>
			</div>
		</div>
	</div>
	<!--//banner-->
	<!--banner-bottom-->
	
	
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js4/bootstrap.js"> </script>
</body>
</html>