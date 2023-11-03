
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>	
<head>
<title>Doctor Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Doctor Availability Form Bootstrap Responsive Templates, Iphone Compatible Templates, Smartphone Compatible Templates, Ipad Compatible Templates, Flat Responsive Templates"/>
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" media="all">
<link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
<!--//webfonts-->


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

</head>
<body>

<a href="CENTER.jsp"><font color="white">HOME</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="Doclogjsp.jsp"><font color="white">LOGIN</font></a>
<h1><font color="blue">DOCTOR REGISTRATION FORM</font></h1>
		<div class="containerw3layouts-agileits">
			<div class="w3layoutscontactagileits">
				
					<div id="wrapper">
							<form action="Regserv" method="post">
								<div id="login" class="animate w3layouts agileits form">
								<div class="ferry ferry-from">
										<label>Doctor Email :</label>
										<input type="text" name="Name" placeholder="Email" required=" ">
									</div>
									<div class="ferry ferry-from">
										<label>password :</label>
										<input type="password" name="password" placeholder="Password" required=" ">
									</div>
									<div class="ferry ferry-from">
										<label>confirm password:</label>
										<input type="password" name="conformpassword" placeholder="Confirm password" required=" ">
									</div>
									<div class="ferry ferry-from">
										<label>Specialization :</label>
										<select name="from">
											<option value="Orthopedic">Orthopedic</option>
											<option value="Dermatologist">Dermatologist</option>
											<option value="Dentist">Dentist</option>
											<option value="Pediatrics">Pediatrics</option>
											<option value="ENT">ENT</option>
											<option value="Radiologist">Radiologist</option>
											<option value="Neurologist">Neurologist</option>
											<option value="Ayurvedic">Ayurvedic</option>
										</select>
									</div>
									<div class="ferry ferry-from">
										<label>Which Area :</label>
										<select name="from1">
											<option value="madipakkam">Madipakkam</option>
											<option value="nanganallur">Nanganallur</option>
											<option value="t.nagar">T.Nagar</option>
											<option value="tambaram">Tambaram</option>
											<option value="kk.nagar">K.K.Nagar</option>
											<option value="velachery">Velachery</option>
											<option value="pallavaram">Pallavaram</option>
											<option value="guindy">Guindy</option>
										</select>
									</div>
									<div class="book-pag agileits w3layouts">
										
										<div class="book-pag-frm1 agileits w3layouts">
											<label>Date Of Availability :</label><input class="date agileits w3layouts" id="datepicker2" type="text"  name="date" value="Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="">
										</div>
										<div class="clear"></div>
									</div>
									<div class="book-pag agileits w3layouts">
										
										
										<div class="clear"></div>
									</div>
									<div class="tickets">
										<div class="persons">
											<label>Years Of Experience :</label>
											<input type="number" name="Number" placeholder="1" required="">
										</div>
										<!-- <div class="persons">
								    <label>Time :</label>	
					<input type="text" id="timepicker" name="Time" class="timepicker form-control" value="">	
									</div> -->

									<!-- 	<div class="clear"></div>
									</div>
									<!-- <div class="ferry ferry-from">
										<label>Queries :</label>
										<textarea id="message" name="message" placeholder="Your Queries" title="Please enter Your Queries"></textarea>
									</div> --> -->
									<div class="wthreesubmitaits">
										<input type="submit" name="submit" value="REGISTER">
									</div>
								</div>
								</form>
						</div>
			</div>
		</div>
		<div class="w3lsfooteragileits">
			<p> &copy; 2019 Doctor Registration Form. Made by Sarthak </p>
		</div>
		<!-- Necessary-JavaScript-Files-&-Links -->
			<!-- Date-Picker-JavaScript -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script  src="js/jquery-ui.js"></script>	
<script  src="js/wickedpicker.js"></script>	

				<script type="text/javascript">
					$(function() {
						$( "#datepicker,#datepicker1,#datepicker2" ).datepicker();
					});
				</script>
				
			<script type="text/javascript">
				$('.timepicker').wickedpicker({twentyFour: false});
			</script>

			<!-- //Date-Picker-JavaScript -->
		<!-- //Necessary-JavaScript-Files-&-Links -->
	

</body>
</html>