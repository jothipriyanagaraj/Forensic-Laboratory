

<!DOCTYPE html>
<html>	
<head>
<title>Remedial Appointment Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta name="keywords" content="Remedial Appointment Form Bootstrap Responsive Templates, Iphone Compatible Templates, 

Smartphone Compatible Templates, Ipad Compatible Templates, Flat Responsive Templates"/>
<link href="css1/easy-responsive-tabs.css1" rel='stylesheet' type='text/css'/>
<link href="css1/jquery-ui.css1" rel="stylesheet" type="text/css" media="all" />
<link href="css1/style.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href="//fonts1.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
<!--//webfonts-->

</head>
<style>
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
text-align:center;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align:center;
    padding: 14px 16px;
    text-decoration: none;
    text-align:center;
    
}

.dropdown {
    float: left;
    overflow: hidden;
    text-align:center;
    
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
    text-align:center;
    
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    text-align:center;
    
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align:center;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}

      
.a{

height:712px;
width:100%;

}

.b{

height:200px;
width:100%;
text-align: center;

}
.b1{

height:150px;
width:100%;


}
.b2{

height:50px;
width:100%;
text-align: center;

}
.b21{

height:50px;
width:20%;
float:left;

}
.b22{

height:50px;
width:60%;
  float:left;

}
.b23{

height:50px;
width:0.5%;
float:left;

}

.c{

height:512px;
width:100%;


}
.c1{
height:500px;
width:33%;
float:left;
}
.c2{
height:500px;
width:33%;
float:left;

}
.c3{
height:500px;
width:33%;
float:left;

}


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
<a href="CENTER.jsp"><font color="white">HOME</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="Patientlog.jsp"><font color="white">LOGIN</font></a>
 <h1><font color="red">PATIENT APPOINTMENT FORM</font></h1>
	<div class="container">
			<div class="w3-agileits-team-title"> 
				
				
			<div id="horizontalTab">
					<ul class=" resp-tabs-list">
					<center><font color="white"><h2> WELCOME TO ONLINE HOSPITAL SERVICES</h2></font></center>
					
					<div class=" resp-tabs-container">
					<div class="tab1">
						<div class="team-img-w3-agile">
						<img src="images1/tm11.png" alt=" " class="img-responsive" />
						</div>
						<div class=" team-Info-agileits">
						<div class=" register-form">
					<form action="patientregservlet" method="post">
						<div class="fields-grid">
							
								<input type="text" name="Your name" placeholder="Patients Name" required="">
								 <input type="text" name="Email" placeholder="Email" required="">
							<h2>Password :</h2>
								<input type="password" name="Password" placeholder="Password" required=""> 
							<br>	<h2>Confirm Password :</h2>
								<input type="password" name="confirmpassword" placeholder="confirmpassword" required=""> 
								
								
								
							<input type="text" name="Phone number" placeholder="Phone Number" required=""> 
							
							<div class="styled-input">
								<h2>Sex :</h2>
								  <input type="radio" name="gender" value="male"> Male
								  <input type="radio" name="gender" value="female"> Female
							</div>
						
						
								<div class="content-wthree2">
									<div class="grid-w3layouts1">
										<!-- <div class="w3-agile1">
											<label class="rating">Taking any medications currently?<span>*</span></label>
											<ul>
												
												<li>
												
													<div class="check"><div class="inside"></div></div>
												</li>
											</ul>
												<div class="clear"></div>
										</div> -->
									</div>
									<div class="clear"></div>
								</div>
								<!-- <div class="styled-input">
							
									<textarea name="text1" placeholder="If Yes, Please List It"></textarea>
									
								</div>  -->
								<input type="text" name="patientid" placeholder="patient id" required=""> 
							
								<input type="submit" name="submit" value="Register">
							
						</div>
						
					</form>
						
				</div>	
												
						</div>
						<div class="clear"> </div>
					</div>
					
					
					</form>
						
				</div>
													
						</div>
						<div class="clear"> </div>
					</div>
					</div>
					<div class="clear"> </div>
					
			</div>
	</div>
 </div>

		
		<div class="copyright">
		
		

		
		
	</div>
	
 	
	<!--tabs-->	
<script src="js1/jquery.min.js"></script>
<script src="js1/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<!--//tabs-->
<!-- Calendar -->
<script src="js1/jquery-ui.js"></script>
	<script>
		$(function() {
		$( "#datepicker,#datepicker1" ).datepicker();
		});
	</script>
<!-- //Calendar -->
</body>
</html>